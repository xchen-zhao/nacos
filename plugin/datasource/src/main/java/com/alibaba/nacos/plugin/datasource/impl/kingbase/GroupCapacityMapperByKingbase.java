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
import com.alibaba.nacos.plugin.datasource.mapper.GroupCapacityMapper;
import com.alibaba.nacos.plugin.datasource.model.MapperContext;
import com.alibaba.nacos.plugin.datasource.model.MapperResult;

import java.util.List;

/**
 * 时间从来不语，却回答了所有问题.
 * @author JasonChen
 */
public class GroupCapacityMapperByKingbase extends AbstractMapper implements GroupCapacityMapper {

    @Override
    public String getDataSource() {
        return DataSourceConstant.KINGBASE;
    }

    @Override
    public MapperResult selectGroupInfoBySize(MapperContext context) {
        // 获取开始行
        final int startRow = context.getStartRow();
        // 获取每页大小
        final int pageSize = context.getPageSize();

        // SQL 查询语句，适配 Kingbase 分页语法
        String sql = "SELECT id, group_id FROM group_capacity WHERE id > ? LIMIT ? OFFSET ?";

        // 将参数列表中的起始行和每页大小添加到参数列表中
        List<Object> paramList = CollectionUtils.list(
                context.getWhereParameter(FieldConstant.ID),
                pageSize,
                startRow
        );
        return new MapperResult(sql, paramList);
    }
}

