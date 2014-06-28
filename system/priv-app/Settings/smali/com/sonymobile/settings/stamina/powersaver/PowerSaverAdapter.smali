.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerSaverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPowerSaverEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 86
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    .line 94
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->loadFeatures()V

    .line 96
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v1

    .line 192
    .local v1, "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    if-nez p2, :cond_0

    .line 193
    iget-object v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 194
    .local v4, "li":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 195
    .local v3, "layout":I
    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    packed-switch v6, :pswitch_data_0

    .line 205
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v4, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 209
    .end local v3    # "layout":I
    .end local v4    # "li":Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f0800b1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 210
    .local v5, "tv":Landroid/widget/TextView;
    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    const v6, 0x7f080025

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 215
    .local v2, "icon":Landroid/widget/ImageView;
    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 219
    const v6, 0x7f08016a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 220
    .local v0, "btn":Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 221
    iget-boolean v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 222
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    :cond_1
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    return-object p2

    .line 197
    .end local v0    # "btn":Landroid/widget/CheckBox;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v5    # "tv":Landroid/widget/TextView;
    .restart local v3    # "layout":I
    .restart local v4    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    const v3, 0x7f04008f

    .line 198
    goto :goto_0

    .line 200
    :pswitch_1
    const v3, 0x7f040090

    .line 201
    goto :goto_0

    .line 216
    .end local v3    # "layout":I
    .end local v4    # "li":Landroid/view/LayoutInflater;
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "tv":Landroid/widget/TextView;
    :cond_2
    const/high16 v6, 0x3f000000

    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public isPowerSaverEnabled()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    return v0
.end method

.method public loadFeatures()V
    .locals 12

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 102
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverFeatures(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, "idIndex":I
    const-string v1, "overriden"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 106
    .local v8, "isEnabledIndex":I
    const-string v1, "param"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 107
    .local v9, "paramIndex":I
    const-string v1, "saved_state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 108
    .local v10, "savedIndex":I
    const-string v1, "state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 110
    .local v11, "stateIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 111
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;-><init>(Ljava/lang/String;ZIII)V

    .line 116
    .local v0, "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    const-string v1, "Brightness"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    .line 118
    const v1, 0x7f0200e9

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 119
    const v1, 0x7f0b002c

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .end local v7    # "idIndex":I
    .end local v8    # "isEnabledIndex":I
    .end local v9    # "paramIndex":I
    .end local v10    # "savedIndex":I
    .end local v11    # "stateIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 120
    .restart local v0    # "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .restart local v7    # "idIndex":I
    .restart local v8    # "isEnabledIndex":I
    .restart local v9    # "paramIndex":I
    .restart local v10    # "savedIndex":I
    .restart local v11    # "stateIndex":I
    :cond_0
    :try_start_1
    const-string v1, "AutoSync"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const v1, 0x7f0200ef

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 122
    const v1, 0x7f0b0033

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 123
    :cond_1
    const-string v1, "BT"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const v1, 0x7f0200e7

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 125
    const v1, 0x7f0b0031

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 126
    :cond_2
    const-string v1, "DataTraffic"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const v1, 0x7f0200ea

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 128
    const v1, 0x7f0b0034

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 129
    :cond_3
    const-string v1, "Gamma"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const v1, 0x7f0200eb

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 131
    const v1, 0x7f0b0035

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 132
    :cond_4
    const-string v1, "GPS"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    const v1, 0x7f0200ec

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 134
    const v1, 0x7f0b0032

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    .line 135
    :cond_5
    const-string v1, "haptic"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    const v1, 0x7f0200ed

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 137
    const v1, 0x7f0b0030

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 138
    :cond_6
    const-string v1, "Timeout"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    .line 140
    const v1, 0x7f0200f0

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 141
    const v1, 0x7f0b002e

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 142
    :cond_7
    const-string v1, "Wifi"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 143
    const v1, 0x7f0200f1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 144
    const v1, 0x7f0b002f

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 145
    :cond_8
    const-string v1, "BraviaEngine"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    const v1, 0x7f0200e8

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 147
    const v1, 0x7f0b0036

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 148
    :cond_9
    const-string v1, "XReality"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 149
    const v1, 0x7f0200e8

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 150
    const v1, 0x7f0b0037

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 151
    :cond_a
    const-string v1, "xLOUD"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 152
    const v1, 0x7f0200f2

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    .line 153
    const v1, 0x7f0b0038

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    .line 155
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v0    # "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    return-void
.end method

.method public setPowerSaverEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    .line 252
    return-void
.end method
