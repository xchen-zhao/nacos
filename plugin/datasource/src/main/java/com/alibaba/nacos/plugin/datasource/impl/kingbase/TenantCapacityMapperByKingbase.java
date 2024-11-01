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

import com.alibaba.nacos.common.utils.CollectionUtils;
import com.alibaba.nacos.plugin.datasource.constants.DataSourceConstant;
import com.alibaba.nacos.plugin.datasource.constants.FieldConstant;
import com.alibaba.nacos.plugin.datasource.mapper.AbstractMapper;
import com.alibaba.nacos.plugin.datasource.mapper.TenantCapacityMapper;
import com.alibaba.nacos.plugin.datasource.model.MapperContext;
import com.alibaba.nacos.plugin.datasource.model.MapperResult;

import java.util.List;

/**
 * 时间从来不语，却回答了所有问题.
 * @author JasonChen
 */
public class TenantCapacityMapperByKingbase extends AbstractMapper implements TenantCapacityMapper {

    @Override
    public String getDataSource() {
        return DataSourceConstant.KINGBASE;
    }

    @Override
    public MapperResult getCapacityList4CorrectUsage(MapperContext context) {
        // 获取开始行
        final int startRow = context.getStartRow();
        // 获取每页大小
        final int pageSize = context.getPageSize();

        String sql = "SELECT id, tenant_id FROM tenant_capacity WHERE id > ? LIMIT ? OFFSET ?";

        List<Object> paramList = CollectionUtils.list(
                // 用于 WHERE 子句
                context.getWhereParameter(FieldConstant.ID),
                // 用于 LIMIT
                pageSize,
                // 用于 OFFSET
                startRow
        );
        return new MapperResult(sql, paramList);
    }
}
