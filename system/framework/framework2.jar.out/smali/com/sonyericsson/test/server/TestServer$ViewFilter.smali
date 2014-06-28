.class Lcom/sonyericsson/test/server/TestServer$ViewFilter;
.super Ljava/lang/Object;
.source "TestServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/test/server/TestServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewFilter"
.end annotation


# static fields
.field private static final TEXT_FILTER_REGEXP_FLAG:Ljava/lang/String; = "/[^/]+/.{0,3}"


# instance fields
.field private id:Ljava/lang/String;

.field private index:I

.field private regExpQuery:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "parameters"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0x2c

    const/4 v8, -0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v8, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    .line 194
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 195
    .local v0, "i":I
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 196
    .local v1, "j":I
    const/4 v3, 0x0

    .line 197
    .local v3, "last":I
    :goto_0
    if-eq v0, v8, :cond_0

    if-eq v1, v8, :cond_0

    .line 198
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    .local v4, "len":I
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v1, 0x1

    add-int/2addr v7, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "val":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    add-int v6, v1, v4

    add-int/lit8 v3, v6, 0x2

    .line 204
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 205
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 206
    goto :goto_0

    .line 207
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "len":I
    .end local v5    # "val":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/test/server/TestServer$ViewFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/test/server/TestServer$ViewFilter;

    .prologue
    .line 179
    iget v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    return v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iput-object p2, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->type:Ljava/lang/String;

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iput-object p2, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->text:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_2
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->id:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_3
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    goto :goto_0

    .line 254
    :cond_4
    const-string v0, "regExpQuery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput-object p2, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public anyIndex()Z
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Z
    .locals 11
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 210
    const/4 v3, 0x1

    .line 211
    .local v3, "match":Z
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->id:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 212
    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v7

    .line 213
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 214
    invoke-interface {p2, p1}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 238
    :goto_1
    return v8

    :cond_1
    move v3, v8

    .line 212
    goto :goto_0

    .line 217
    :cond_2
    const/4 v4, 0x0

    .line 218
    .local v4, "p":Ljava/util/regex/Pattern;
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    const-string v10, "/[^/]+/.{0,3}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 219
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, "lastSlashIndex":I
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    invoke-virtual {v9, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "pattern":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "searchFlag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 223
    .local v0, "flag":I
    const-string v9, "i"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 224
    or-int/lit8 v0, v0, 0x2

    .line 226
    :cond_3
    invoke-static {v5, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 230
    .end local v0    # "flag":I
    .end local v1    # "lastSlashIndex":I
    .end local v5    # "pattern":Ljava/lang/String;
    .end local v6    # "searchFlag":Ljava/lang/String;
    :goto_2
    invoke-interface {p2, p1}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 231
    .local v2, "m":Ljava/util/regex/Matcher;
    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_7

    move v3, v7

    .line 236
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->type:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 237
    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v3, v7

    :cond_5
    :goto_4
    move v8, v3

    .line 238
    goto :goto_1

    .line 228
    .restart local v4    # "p":Ljava/util/regex/Pattern;
    :cond_6
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->regExpQuery:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    goto :goto_2

    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_7
    move v3, v8

    .line 231
    goto :goto_3

    .line 233
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_8
    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->text:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 234
    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->text:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v3, v7

    :goto_5
    goto :goto_3

    :cond_9
    move v3, v8

    goto :goto_5

    :cond_a
    move v3, v8

    .line 237
    goto :goto_4
.end method
