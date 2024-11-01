/*
 * Copyright 1999-2022 Alibaba Group Holding Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.alibaba.nacos.plugin.datasource.impl.kingbase;

import com.alibaba.nacos.plugin.datasource.constants.DataSourceConstant;
import com.alibaba.nacos.plugin.datasource.mapper.AbstractMapper;
import com.alibaba.nacos.plugin.datasource.mapper.ConfigInfoTagMapper;
import com.alibaba.nacos.plugin.datasource.model.MapperContext;
import com.alibaba.nacos.plugin.datasource.model.MapperResult;

import java.util.Collections;

/**
 * 时间从来不语，却回答了所有问题.
 * @author JasonChen
 */
public class ConfigInfoTagMapperByKingbase extends AbstractMapper implements ConfigInfoTagMapper {

    @Override
    public MapperResult findAllConfigInfoTagForDumpAllFetchRows(MapperContext context) {
        final int startRow = context.getStartRow();
        final int pageSize = context.getPageSize();

        // 使用 Kingbase 的分页查询语法
        String sql = "SELECT t.id, data_id, group_id, tenant_id, tag_id, app_name, content, md5, gmt_modified "
                + "FROM (SELECT id FROM config_info_tag ORDER BY id "
                + "LIMIT " + pageSize + " OFFSET " + startRow + ") g, config_info_tag t "
                + "WHERE g.id = t.id";
        return new MapperResult(sql, Collections.emptyList());
    }

    @Override
    public String getDataSource() {
        return DataSourceConstant.KINGBASE;
    }
}
