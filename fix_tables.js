const fs = require('fs');
const file = '/Users/takizawahiroki/Desktop/農業工程管理ver2.0/cf-agri-dashboard/public/admin.html';
let html = fs.readFileSync(file, 'utf8');

const OLD_BLOCK = `                                <!-- Process Master Sub-Tabs -->
                                <div v-if="t.id === 'process_master'">
                                    <v-tabs v-model="processTab" bg-color="grey-lighten-4" color="blue-darken-3"
                                        show-arrows density="compact">
                                        <v-tab value="all">すべて</v-tab>
                                        <v-tab v-for="variety in uniqueVarieties" :key="variety" :value="variety"
                                            :color="cropColorMap[variety] || 'blue-darken-3'">
                                            <v-icon start :color="cropColorMap[variety] || 'grey'">mdi-circle</v-icon>{{
                                            variety }}
                                        </v-tab>
                                    </v-tabs>

                                                                        <v-data-table :headers="t.headers"
                                        :items="(tableData[t.id] || []).filter(i => i.folder_name === fieldsTab)"
                                        :items-per-page="-1" :loading="loading">
                                        <template v-slot:item.area_total="{ item }">
                                            {{ item.area_total != null ? Math.round(item.area_total) : '' }}
                                        </template>
                                        <template v-slot:item.ridge_width="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_rw_\${item.id}\`" v-model="item.ridge_width" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 60px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_rw_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.ridge_width || '---' }}</span>
                                        </template>
                                        <template v-slot:item.ridge_distance="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_rd_\${item.id}\`" v-model="item.ridge_distance" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 60px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_rd_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.ridge_distance || '---' }}</span>
                                        </template>
                                        <template v-slot:item.number_of_rows="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_row_\${item.id}\`" v-model="item.number_of_rows" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 50px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_row_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.number_of_rows || '---' }}</span>
                                        </template>
                                        <template v-slot:item.plant_distance="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_pd_\${item.id}\`" v-model="item.plant_distance" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 60px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_pd_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.plant_distance || '---' }}</span>
                                        </template>
                                        <template v-slot:item.max_plantable="{ item }">
                                            <strong>{{ item.max_plantable != null ? Math.round(item.max_plantable) : '' }}</strong>
                                        </template>
                                        <!-- No operations for Fields master as per UI design -->
                                    </v-data-table>
                                </div>`;

const NEW_BLOCK = `                                <!-- Process Master Sub-Tabs -->
                                <div v-if="t.id === 'process_master'">
                                    <v-tabs v-model="processTab" bg-color="grey-lighten-4" color="blue-darken-3" show-arrows density="compact">
                                        <v-tab value="all">すべて</v-tab>
                                        <v-tab v-for="variety in uniqueVarieties" :key="variety" :value="variety" :color="cropColorMap[variety] || 'blue-darken-3'">
                                            <v-icon start :color="cropColorMap[variety] || 'grey'">mdi-circle</v-icon>{{ variety }}
                                        </v-tab>
                                    </v-tabs>
                                    <v-data-table :headers="t.headers"
                                        :items="processTab === 'all' ? (tableData[t.id] || []) : (tableData[t.id] || []).filter(i => i.variety_name === processTab)"
                                        :items-per-page="-1" :loading="loading">
                                        <template v-slot:item.actions="{ item }">
                                            <v-icon size="small" class="me-2" color="blue" @click="openCrudDialog(t.id, item)">mdi-pencil</v-icon>
                                            <v-icon size="small" color="red" @click="deleteRecord(t.id, item)">mdi-delete</v-icon>
                                        </template>
                                        <template v-slot:item.variety_name="{ item }">
                                            <v-icon size="small" class="mr-1" :color="cropColorMap[item.variety_name] || 'grey'">mdi-circle</v-icon>
                                            {{ item.variety_name }}
                                        </template>
                                    </v-data-table>
                                </div>

                                <!-- Fields Master Sub-Tabs -->
                                <div v-else-if="t.id === 'fields'">
                                    <div class="mb-3">
                                        <v-tabs v-model="fieldsTab" color="green-darken-1">
                                            <v-tab v-for="folder in uniqueFieldFolders" :key="folder" :value="folder">{{ folder }}</v-tab>
                                        </v-tabs>
                                    </div>
                                    <v-data-table :headers="t.headers"
                                        :items="(tableData[t.id] || []).filter(i => i.folder_name === fieldsTab)"
                                        :items-per-page="-1" :loading="loading">
                                        <template v-slot:item.area_total="{ item }">
                                            {{ item.area_total != null ? Math.round(item.area_total) : '' }}
                                        </template>
                                        <template v-slot:item.ridge_width="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_rw_\${item.id}\`" v-model="item.ridge_width" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 60px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_rw_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.ridge_width || '---' }}</span>
                                        </template>
                                        <template v-slot:item.ridge_distance="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_rd_\${item.id}\`" v-model="item.ridge_distance" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 60px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_rd_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.ridge_distance || '---' }}</span>
                                        </template>
                                        <template v-slot:item.number_of_rows="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_row_\${item.id}\`" v-model="item.number_of_rows" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 50px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_row_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.number_of_rows || '---' }}</span>
                                        </template>
                                        <template v-slot:item.plant_distance="{ item }">
                                            <v-text-field v-if="inlineEditingId === \`field_pd_\${item.id}\`" v-model="item.plant_distance" type="number" variant="underlined" hide-details density="compact" @change="saveInlineFieldDesignAction(item)" @blur="inlineEditingId = null" style="min-width: 60px" class="pa-0 ma-0 text-caption" autofocus></v-text-field>
                                            <span v-else @click="inlineEditingId = \`field_pd_\${item.id}\`" class="cursor-pointer px-2 py-1 rounded hover-bg-grey text-body-2 d-block" style="min-height:24px;">{{ item.plant_distance || '---' }}</span>
                                        </template>
                                        <template v-slot:item.max_plantable="{ item }">
                                            <strong>{{ item.max_plantable != null ? Math.round(item.max_plantable) : '' }}</strong>
                                        </template>
                                        <!-- No operations for Fields master as per UI design -->
                                    </v-data-table>
                                </div>`;

if (html.includes(OLD_BLOCK)) {
    html = html.replace(OLD_BLOCK, NEW_BLOCK);
    fs.writeFileSync(file, html);
    console.log("Successfully replaced block.");
} else {
    console.error("Could not find OLD_BLOCK");
}
