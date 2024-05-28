const GuiStyleProp = extern struct {
    controlId: c_ushort,
    propertyId: c_ushort,
    propertyValue: c_int,
};

pub const GuiState = enum(c_int) {
    state_normal = 0,
    state_focused,
    state_pressed,
    state_disabled,
};

pub const GuiTextAlignment = enum(c_int) {
    text_align_left = 0,
    text_align_center,
    text_align_right,
};

pub const GuiTextAlignmentVertical = enum(c_int) {
    text_align_top = 0,
    text_align_middle,
    text_align_bottom,
};

pub const GuiTextWrapMode = enum(c_int) {
    text_wrap_none = 0,
    text_wrap_char,
    text_wrap_word,
};

pub const GuiControl = enum(c_int) {
    default = 0,
    label,
    button,
    toggle,
    slider,
    progressbar,
    checkbox,
    combobox,
    dropdownbox,
    textbox,
    valuebox,
    spinner,
    listview,
    colorpicker,
    scrollbar,
    statusbar,
};

pub const GuiControlProperty = enum(c_int) {
    border_color_normal = 0,
    base_color_normal,
    text_color_normal,
    border_color_focused,
    base_color_focused,
    text_color_focused,
    border_color_pressed,
    base_color_pressed,
    text_color_pressed,
    border_color_disabled,
    base_color_disabled,
    text_color_disabled,
    border_width,
    text_padding,
    text_alignment,
};

pub const GuiDefaultProperty = enum(c_int) {
    text_size = 16,
    text_spacing,
    line_color,
    background_color,
    text_line_spacing,
    text_alignment_vertical,
    text_wrap_mode,
};
