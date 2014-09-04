.class public Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;",
        ">;"
    }
.end annotation


# instance fields
.field private mBorders:Ljava/lang/String;

.field private mCrop:Ljava/lang/String;

.field private mCurrentPresetPosition:I

.field private mMirror:Ljava/lang/String;

.field private mRedoMenuItem:Landroid/widget/ImageButton;

.field private mRotate:Ljava/lang/String;

.field private mStraighten:Ljava/lang/String;

.field private mUndoMenuItem:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 42
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/widget/ImageButton;

    .line 54
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/widget/ImageButton;

    .line 59
    const v0, 0x7f070012

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    .line 60
    const v0, 0x7f070036

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 61
    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 62
    const v0, 0x7f070035

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 63
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public addHistoryItem(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 1
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->canAddHistoryItem(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->insert(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;I)V

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 137
    :cond_0
    return-void
.end method

.method public canAddHistoryItem(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z
    .locals 3
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getLast()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 141
    .local v0, "imagePreset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->same(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 148
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReset()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :cond_0
    return v0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentPreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    goto :goto_0
.end method

.method public getHistoryPosition()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public getLast()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f020106

    .line 196
    move-object v5, p2

    .line 197
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 200
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030005

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 203
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 204
    .local v1, "item":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_2

    .line 205
    const v6, 0x7f0c0085

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 206
    .local v2, "itemView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_1
    const v6, 0x7f0c0084

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 210
    .local v3, "markView":Landroid/widget/ImageView;
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-ne p1, v6, :cond_3

    .line 211
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    :goto_0
    const v6, 0x7f0c0086

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 217
    .local v4, "typeView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_4

    .line 218
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    .end local v2    # "itemView":Landroid/widget/TextView;
    .end local v3    # "markView":Landroid/widget/ImageView;
    .end local v4    # "typeView":Landroid/widget/ImageView;
    :cond_2
    :goto_1
    return-object v5

    .line 213
    .restart local v2    # "itemView":Landroid/widget/TextView;
    .restart local v3    # "markView":Landroid/widget/ImageView;
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 219
    .restart local v4    # "typeView":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 220
    const v6, 0x7f020104

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 222
    const v6, 0x7f020086

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 223
    :cond_6
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 224
    const v6, 0x7f020081

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 226
    const v6, 0x7f020085

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 227
    :cond_8
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 228
    const v6, 0x7f020107

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 229
    :cond_9
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->isFx()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 230
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 232
    :cond_a
    const v6, 0x7f020105

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public insert(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;I)V
    .locals 3
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "position"    # I

    .prologue
    .line 153
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-eqz v2, :cond_2

    .line 155
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v1, "oldItems":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;>;"
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->clear()V

    .line 160
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 161
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->add(Ljava/lang/Object;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->canAddHistoryItem(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    .end local v0    # "i":I
    .end local v1    # "oldItems":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;>;"
    :goto_2
    return-void

    .line 169
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 170
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public bridge synthetic insert(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 39
    check-cast p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->insert(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;I)V

    return-void
.end method

.method public redo()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 176
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-gez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 181
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 113
    .local v0, "first":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->clear()V

    .line 114
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->addHistoryItem(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->updateMenuItems()V

    goto :goto_0
.end method

.method public setCurrentPreset(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public setMenuItems(Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "undoItem"    # Landroid/widget/ImageButton;
    .param p2, "redoItem"    # Landroid/widget/ImageButton;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/widget/ImageButton;

    .line 68
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/widget/ImageButton;

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 70
    return-void
.end method

.method public undo()I
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 186
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 190
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 191
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public updateMenuItems()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->canUndo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->canRedo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 100
    :cond_1
    return-void
.end method
