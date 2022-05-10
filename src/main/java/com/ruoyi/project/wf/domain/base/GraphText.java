package com.ruoyi.project.wf.domain.base;

import lombok.Data;

/**
 * 流程图文字
 */
@Data
public class GraphText
{
    private String value;
    private Double x;
    private Double y;
    private Boolean editable;
    private Boolean draggable;
}
