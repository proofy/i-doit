<style type="text/css">
    #category_list_overview,
    #category_list_active {
        margin: 0 !important;
    }

    #category_list_overview li,
    #category_list_active li {
        position: relative;
    }

    #category_list_overview li input,
    #category_list_active li input {
        position: absolute;
        top: 7px;
        right: 5px;
    }

    #category_list_overview li:first-child,
    #category_list_active li:first-child {
        border: none !important;
    }
</style>

<table class="contentTable">
    <tr>
        <td class="key">[{isys type="lang" ident="LC__CMDB__OBJTYPE__ID"}]</td>
        <td class="value">[{isys type="f_data" name="C__OBJTYPE__ID"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="lang" ident="LC__CMDB__OBJTYPE__NAME"}]</td>
        <td class="value">[{isys type="f_data" name="C__OBJTYPE__TRANSLATED_TITLE"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__TITLE" ident="LC__CMDB__OBJTYPE__CONST_NAME"}]</td>
        <td class="value">[{isys type="f_text" name="C__OBJTYPE__TITLE" p_bNoTranslation="1"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__SYSID_PREFIX" ident="LC__CMDB__OBJTYPE__SYSID_PREFIX"}]</td>
        <td class="value">[{isys type="f_text" name="C__OBJTYPE__SYSID_PREFIX" p_bNoTranslation="1"}]</td>
    </tr>
    <tr>
        <td class="key vat">
            [{isys type="f_label" name="C__OBJTYPE__AUTOMATED_INVENTORY_NO" ident="LC__CMDB__OBJTYPE__AUTOMATIC_INVENTORY_NUMBER"}]
        </td>
        <td class="value">
            <div class="ml20 input-group input-size-normal">
                [{isys type="f_text" name="C__OBJTYPE__AUTOMATED_INVENTORY_NO" p_bNoTranslation="1" p_bInfoIconSpacer=0 disableInputGroup=true}]

                [{if $placeholders && isys_glob_is_edit_mode()}]
                    <div class="input-group-addon input-group-addon-clickable">
                        <img src="[{$dir_images}]icons/silk/help.png" onclick="Effect.toggle('placeholderHelper', 'slide', {duration:0.2});" />
                    </div>
                [{/if}]
            </div>
            [{if isys_glob_is_edit_mode()}]
                <br class="cb" />
                <div class="box ml20 mt5 mb5 overflow-auto input-size-normal" style="display:none;height:200px;" id="placeholderHelper">
                    <table class="contentTable m0 w100 listing hover">
                        [{foreach $placeholders as $plkey => $plholder}]
                            <tr class="mouse-pointer">
                                <td class="key"><code>[{$plkey}]</code></td>
                                <td>[{$plholder}]</td>
                            </tr>
                        [{/foreach}]
                    </table>
                </div>
            [{/if}]
        </td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__POSITION_IN_TREE" ident="LC__CMDB__OBJTYPE__POSITION_IN_TREE"}]</td>
        <td class="value">[{isys type="f_text" name="C__OBJTYPE__POSITION_IN_TREE" p_bNoTranslation="1"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__COLOR" ident="LC__CMDB__OBJTYPE__COLOR"}]</td>
        <td class="value">[{isys type="f_text" id="C__OBJTYPE__COLOR" name="C__OBJTYPE__COLOR" p_bNoTranslation="1"}]</td>
    </tr>

    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__GROUP_ID" ident="LC__CMDB__OBJTYPE__GROUP"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__OBJTYPE__GROUP_ID" p_strTable="isys_obj_type_group" p_bDbFieldNN="1" tab="3"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__CATS_ID" ident="LC__CMDB__OBJTYPE__CATS"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__OBJTYPE__CATS_ID" tab="3"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__SELF_DEFINED" ident="LC__CMDB__OBJTYPE__SELFDEFINED"}]</td>
        <td class="value">[{isys type="f_dialog"  name="C__OBJTYPE__SELF_DEFINED" p_bDisabled=true p_bDbFieldNN="1" tab="4"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__IS_CONTAINER" ident="LC__CMDB__OBJTYPE__LOCATION"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__OBJTYPE__IS_CONTAINER" p_bDbFieldNN="1"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__RELATION_MASTER" ident="LC__CMDB__OBJTYPE__MASTER_RELATION"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__OBJTYPE__RELATION_MASTER" p_bDbFieldNN="1"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__INSERTION_OBJECT" ident="LC__CMDB__OBJTYPE__INSERTION_OBJECT"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__OBJTYPE__INSERTION_OBJECT" p_bDbFieldNN="1"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__SHOW_IN_TREE" ident="LC__CMDB__OBJTYPE__SHOW_IN_TREE"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__OBJTYPE__SHOW_IN_TREE"  p_bDbFieldNN="1"}]</td>
    </tr>

    <tr>
        <td class="key vat">[{isys type="f_label" name="C__OBJTYPE__IMG_NAME" ident="LC__CMDB__OBJTYPE__IMG_NAME"}]</td>
        <td class="value">
            [{isys type="f_dialog" name="C__OBJTYPE__IMG_NAME" id="C__OBJTYPE__IMG_NAME" p_bDbFieldNN=1 disableInputGroup=true p_strStyle='display:none;'}]
            [{if isys_glob_is_edit_mode()}]
                <div class="box ml20 mb5 overflow-auto input-size-normal" style="height:200px;" id="objTypeImagesHelp">
                    <table class="contentTable m0 w100 listing hover">
                        [{foreach $objTypeImages as $image}]
                            <tr>
                                <td class="mouse-pointer[{if $image == $objTypeImage}] selected[{/if}]" title="[{$image}]">
                                    <span><img src="images/objecttypes/[{$image}]" class="vam mr5" /> [{$image}]</span>
                                </td>
                            </tr>
                        [{/foreach}]
                    </table>
                </div>
            [{/if}]
        </td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__ICON" ident="LC__UNIVERSAL__ICON"}]</td>
        <td class="value">[{isys type="f_text" name="C__OBJTYPE__ICON"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__CONST" ident="LC__CMDB__OBJTYPE__CONST"}]</td>
        <td class="value">[{isys type="f_text" name="C__OBJTYPE__CONST"}]</td>
    </tr>
    <tr>
        <td class="key">Default Template</td>
        <td class="value">[{isys type="f_dialog" name="C__CMDB__OBJTYPE__DEFAULT_TEMPLATE" p_arData=$templates p_bDbFieldNN="0"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__CMDB__OBJTYPE__USE_TEMPLATE_TITLE" ident="LC__CMDB__OBJTYPE__USE_TEMPLATE_TITLE"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__CMDB__OBJTYPE__USE_TEMPLATE_TITLE" p_bDbFieldNN="1"}]</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__CMDB__OVERVIEW__ENTRY_POINT" ident="LC__CMDB__OVERVIEW__ENTRY_POINT"}]</td>
        <td class="value">[{isys type="f_dialog" name="C__CMDB__OVERVIEW__ENTRY_POINT" p_bDbFieldNN="1"}]</td>
    </tr>
    <tr>
        <td class="key">[{isys type="lang" ident="LC__MODULE__SEARCH__CATG"}]</td>
        <td class="value">
            <div id="qcw" class="ml20">
                <table id="main">
                    <tr>
                        <td>
                            <div class="box mr5" style="min-height:250px;">
                                <h3 class="gradient p5" style="position: relative">
                                    [{isys type="lang" ident="LC__CMDB__OBJTYPE__ASSIGNED_CATG"}]

                                    <label title="[{isys type="lang" ident="LC__UNIVERSAL__MARK_ALL"}]" style="position: absolute; top: 7px; right: 5px;">
                                        <input type="checkbox" id="category_list_active_check_all" [{if !$editmode}]disabled="disabled"[{/if}] />
                                    </label>
                                </h3>
                                <div id="category_list_active_div">
                                    <ul class="qcw_category_list" id="category_list_active">
                                        [{foreach $arDialogList as $row}]
                                            <li id="category_[{$row.id}]" class="[{if !$row.sel}]bg-lightgrey text-grey[{/if}] [{if $row.sticky}]opacity-30[{/if}]">
                                                <span class="title">[{$row.val}]</span>
                                                <input
                                                        type="checkbox"
                                                        name="assigned_categories[]"
                                                        value="[{$row.id}]"
                                                        data-overview="[{$row.overview}]"
                                                        data-directories="[{$row.directory_categories}]"
                                                        [{if !$editmode || $row.sticky}]class="non-clickable"[{/if}] [{if $row.sel}]checked="checked"[{/if}] />
                                            </li>
                                        [{/foreach}]
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td style="vertical-align: middle;">
                            <img alt=">" src="[{$dir_images}]rsaquo.png" />
                        </td>
                        <td>
                            <div class="box" style="min-height:250px;margin-right:350px">
                                <h3 class="gradient p5" style="position: relative">
                                    [{isys type="lang" ident="LC__CMDB__OBJTYPE__CATEGORIES_ON_THE_OVERVIEW"}]

                                    <label title="[{isys type="lang" ident="LC__UNIVERSAL__MARK_ALL"}]" style="position: absolute; top: 7px; right: 5px;">
                                        <input type="checkbox" id="category_list_overview_check_all" [{if !$editmode}]disabled="disabled"[{/if}] />
                                    </label>
                                </h3>
                                <div id="category_list_overview_div">
                                    <ul class="qcw_category_list" id="category_list_overview">
                                        [{foreach $arDialogList2 as $row}]
                                            <li id="category_ov_[{$row.id}]" class="[{if !$row.sel}]bg-lightgrey text-grey[{/if}][{if !$row.sticky}] sortable[{/if}]">
                                                <span class="handle"></span>
                                                <span class="title">[{$row.val}]</span>
                                                <input type="checkbox" name="assigned_cat_overview[]" value="[{$row.id}]"
                                                       [{if !$editmode || !$category_overview_is_active || $row.sticky}]disabled="disabled"[{/if}] [{if $row.sticky}]data-sticky="true"[{/if}] [{if $row.sel}]checked="checked"[{/if}] />
                                            </li>
                                        [{/foreach}]
                                    </ul>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td class="key">[{isys type="f_label" name="C__OBJTYPE__DESCRIPTION" ident="LC__CMDB__OBJTYPE__DESCRIPTION"}]</td>
        <td class="value">
			<span class="value" style="font-weight:normal; font-family:Fixedsys,Courier New,Sans-Serif,Serif,Monospace;">
			[{isys type="f_textarea" name="C__OBJTYPE__DESCRIPTION" p_nRows="6" p_bInfoIconDisabled="1" p_strStyle="font-weight:normal; font-family:Fixedsys,Courier,Sans-Serif,Serif,Monospace;"}]
			</span>
        </td>
    </tr>
</table>

[{if isys_glob_is_edit_mode()}]
    <script type="text/javascript">
        (function () {
            "use strict";

            var $displayOverviewPage  = $('C__CMDB__OVERVIEW__ENTRY_POINT'),
                $objtectTypeColor     = $('C__OBJTYPE__COLOR'),
                $inventoryNumberField = $('C__OBJTYPE__AUTOMATED_INVENTORY_NO'),
                $placeholderDiv       = $('placeholderHelper'),
                $objTypeImages        = $$('#objTypeImagesHelp td'),
                categoryHandling,
                i;

            // @see  ID-5238  Empty all "savedCheckbox" arrays - because we do a lot via AJAX this variables might still be set.
            for (i in window)
            {
                if (i.indexOf('tempObjList_') === 0)
                {
                    window[i] = [];
                }
            }

            $objTypeImages.forEach(function (field) {
                field.on('click', function () {
                    if ($('C__OBJTYPE__IMG_NAME'))
                    {
                        $('C__OBJTYPE__IMG_NAME').setValue(field.title);
                        $objTypeImages.forEach(function (field) {
                            field.removeClassName('selected');
                        });
                        field.addClassName('selected');
                    }
                });
            });

            if ($inventoryNumberField && $placeholderDiv)
            {
                $placeholderDiv.on('click', 'td', function (ev) {
                    var $placeholder = ev.findElement('tr').down('code');

                    $inventoryNumberField.setValue($inventoryNumberField.getValue() + ($placeholder.textContent || $placeholder.innerText || $placeholder.innerHTML));
                });
            }

            window.ObjtypeCategories = Class.create({
                $assignAll:  $('category_list_active_check_all'),
                $assignList: $('category_list_active'),

                $overviewAll:  $('category_list_overview_check_all'),
                $overviewList: $('category_list_overview'),

                initialize: function () {
                    this.setObserver();
                },

                setObserver: function () {
                    var that = this;

                    this.$assignList.on('change', 'input', this.handle_objtype_category.bindAsEventListener(this));

                    this.$assignAll.on('change', function () {
                        var checked = that.$assignAll.checked;

                        that.$assignList.select('input:not(:disabled)').invoke('setValue', checked ? 1 : 0).invoke('simulate', 'change');
                        that.handle_objtype_overview(checked)
                    });

                    this.$overviewList.on('change', 'input', this.handle_objtype_overview_category.bindAsEventListener(this));

                    this.$overviewAll.on('change', function () {
                        that.$overviewList.select('input:not(:disabled)').invoke('setValue', that.$overviewAll.checked ? 1 : 0).invoke('simulate', 'change');
                    });

                    this.resetSortable();
                },

                resetSortable: function () {
                    Sortable.destroy('category_list_overview');

                    Position.includeScrollOffsets = true;

                    Sortable.create('category_list_overview', {
                        tag:    'li',
                        handle: 'handle',
                        only: 'sortable'
                    });

                },

                handle_objtype_overview_category: function (ev) {
                    var $checkbox = ev.findElement();

                    if ($checkbox.checked)
                    {
                        $checkbox.up('li').removeClassName('bg-lightgrey').removeClassName('text-grey');
                    }
                    else
                    {
                        $checkbox.up('li').addClassName('bg-lightgrey').addClassName('text-grey');
                    }
                },

                handle_objtype_overview: function (check) {
                    var $overviewCheckboxes = this.$overviewList.select('input'), i;

                    for (i in $overviewCheckboxes)
                    {
                        if (!$overviewCheckboxes.hasOwnProperty(i))
                        {
                            continue;
                        }

                        if (check)
                        {
                            if ($overviewCheckboxes[i].readAttribute('data-sticky') == null)
                            {
                                $overviewCheckboxes[i].enable();
                            }
                        }
                        else
                        {
                            $overviewCheckboxes[i].disable();
                        }
                    }
                },

                handle_objtype_category: function (ev) {
                    var $checkbox            = ev.findElement('input'),
                        overview_category    = $checkbox.readAttribute('data-overview'),
                        directory_categories = $checkbox.readAttribute('data-directories'),
                        checkboxValue        = $checkbox.readAttribute('value'),
                        checked              = $checkbox.checked,
                        displayOverview      = $displayOverviewPage.getValue(),
                        newElements          = [], i, $li;

                    if (directory_categories)
                    {
                        newElements = directory_categories.evalJSON();
                    }

                    if ($checkbox.checked)
                    {
                        $checkbox.up('li').removeClassName('bg-lightgrey').removeClassName('text-grey');
                    }
                    else
                    {
                        $checkbox.up('li').addClassName('bg-lightgrey').addClassName('text-grey');
                    }

                    if (overview_category == 1)
                    {
                        newElements.push({
                            id:    checkboxValue,
                            title: $checkbox.previous('span').innerHTML
                        });
                    }

                    if (checked)
                    {
                        for (i in newElements)
                        {
                            if (!newElements.hasOwnProperty(i))
                            {
                                continue;
                            }

                            $li = new Element('li', {
                                id:           'category_ov_' + newElements[i].id,
                                'data-const': newElements[i].id
                            })
                                .insert(new Element('span', {className: 'handle'}))
                                .insert(new Element('span', {className: 'title'}).update(newElements[i].title))
                                .insert(new Element('input', {
                                    type:     'checkbox',
                                    disabled: !displayOverview,
                                    name:     'assigned_cat_overview[]',
                                    value:    newElements[i].id
                                }));

                            this.$overviewList.insert($li);
                        }
                    }
                    else
                    {
                        if ($('category_ov_' + checkboxValue))
                        {
                            $('category_ov_' + checkboxValue).remove();
                        }

                        for (i in newElements)
                        {
                            if (!newElements.hasOwnProperty(i))
                            {
                                continue;
                            }

                            if ($('category_ov_' + newElements[i].id))
                            {
                                $('category_ov_' + newElements[i].id).remove();
                            }
                        }
                    }

                    this.resetSortable();
                }
            });

            categoryHandling = new window.ObjtypeCategories();

            if ($objtectTypeColor)
            {
                new jscolor.color($objtectTypeColor);
            }

            if ($displayOverviewPage)
            {
                $displayOverviewPage.on('change', function () {
                    categoryHandling.handle_objtype_overview(!!parseInt(this.value));
                });
            }
        }());
    </script>
[{/if}]
