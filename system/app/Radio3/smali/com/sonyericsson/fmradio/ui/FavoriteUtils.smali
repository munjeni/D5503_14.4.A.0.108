.class public Lcom/sonyericsson/fmradio/ui/FavoriteUtils;
.super Ljava/lang/Object;
.source "FavoriteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    }
.end annotation


# static fields
.field public static final COLOR_1:I = -0x1

.field public static final COLOR_2:I = -0x3333cd

.field public static final COLOR_3:I = -0xff6601

.field public static final COLOR_4:I = -0x66cc34

.field public static final COLOR_5:I = -0xcc9a

.field private static final KEY_COLORS:Ljava/lang/String; = "cs"

.field private static final KEY_FREQUENCIES:Ljava/lang/String; = "fs"

.field private static final KEY_NAMES:Ljava/lang/String; = "ns"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->getAttrDimensionInPx(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static createFavoritesAdapter(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Landroid/widget/ArrayAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ff"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/fmradio/util/FrequencyFormatter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "favorites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const/4 v2, 0x0

    .line 60
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    .line 62
    .local v5, "mFavoritesSize":I
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;

    invoke-static {p1, p2}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->toFavItemList(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;-><init>(Landroid/content/Context;IILjava/util/List;I)V

    return-object v0
.end method

.method public static favoriteColorToId(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 238
    sparse-switch p0, :sswitch_data_0

    .line 249
    const v0, 0x7f0c0004

    :goto_0
    return v0

    .line 240
    :sswitch_0
    const v0, 0x7f0c0005

    goto :goto_0

    .line 242
    :sswitch_1
    const v0, 0x7f0c0006

    goto :goto_0

    .line 244
    :sswitch_2
    const v0, 0x7f0c0007

    goto :goto_0

    .line 246
    :sswitch_3
    const v0, 0x7f0c0008

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        -0xff6601 -> :sswitch_1
        -0x66cc34 -> :sswitch_2
        -0x3333cd -> :sswitch_0
        -0xcc9a -> :sswitch_3
    .end sparse-switch
.end method

.method public static favoriteIdToColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_0

    .line 228
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 219
    :pswitch_0
    const v0, -0x3333cd

    goto :goto_0

    .line 221
    :pswitch_1
    const v0, -0xff6601

    goto :goto_0

    .line 223
    :pswitch_2
    const v0, -0x66cc34

    goto :goto_0

    .line 225
    :pswitch_3
    const v0, -0xcc9a

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0005
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAttrDimensionInPx(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "pixelSize":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 97
    .local v1, "ta":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 98
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 99
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_0
    return v0
.end method

.method public static getFavorites(Landroid/os/Bundle;)Ljava/util/SortedMap;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    const-string v5, "fs"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "ns"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 198
    .local v4, "ns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "cs"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 200
    .local v0, "cs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 201
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "length mismatch when deserializing favorites"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 205
    .local v1, "favorites":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 206
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v5, v6}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-object v1
.end method

.method public static toBundle(Ljava/util/SortedMap;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "favorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v3, "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v5, "ns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "cs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/station/Favorite;

    .line 186
    .local v2, "f":Lcom/sonyericsson/fmradio/station/Favorite;
    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/station/Favorite;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v2    # "f":Lcom/sonyericsson/fmradio/station/Favorite;
    :cond_0
    const-string v6, "fs"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    const-string v6, "ns"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 191
    const-string v6, "cs"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 192
    return-object v0
.end method

.method private static toFavItemList(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .param p0, "ff"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/fmradio/util/FrequencyFormatter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "favorites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v4, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v4, p0, v5, v3}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILcom/sonyericsson/fmradio/station/Favorite;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_0
    return-object v2
.end method
