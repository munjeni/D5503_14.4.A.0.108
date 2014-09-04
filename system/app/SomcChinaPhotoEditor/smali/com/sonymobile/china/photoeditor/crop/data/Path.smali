.class public Lcom/sonymobile/china/photoeditor/crop/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;


# instance fields
.field private mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/china/photoeditor/crop/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "segment"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mSegment:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static clearAll()V
    .locals 4

    .prologue
    .line 219
    const-class v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v1

    .line 220
    :try_start_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/Path;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll()V
    .locals 3

    .prologue
    .line 225
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->dumpAll(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method static dumpAll(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "p"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p1, "prefix1"    # Ljava/lang/String;
    .param p2, "prefix2"    # Ljava/lang/String;

    .prologue
    .line 229
    const-class v7, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v7

    .line 235
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    invoke-virtual {v6}, Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object v1

    .line 237
    .local v1, "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 238
    .local v5, "n":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 239
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    invoke-virtual {v6, v4}, Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 240
    .local v0, "child":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    if-nez v0, :cond_0

    .line 241
    add-int/lit8 v2, v2, 0x1

    .line 242
    goto :goto_0

    .line 247
    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_1

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "+-- "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v8}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->dumpAll(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v0    # "child":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "n":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 250
    .restart local v0    # "child":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .restart local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "n":I
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "+-- "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v8}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->dumpAll(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v0    # "child":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "n":I
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v4, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v4

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "segments":[Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 105
    .local v0, "current":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 106
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit v4

    return-object v0

    .line 109
    .end local v0    # "current":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v1    # "i":I
    .end local v2    # "segments":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 129
    .local v4, "n":I
    if-nez v4, :cond_0

    .line 130
    new-array v5, v7, [Ljava/lang/String;

    .line 156
    :goto_0
    return-object v5

    .line 131
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 132
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v6, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 136
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "brace":I
    move v3, v2

    .local v3, "j":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 141
    .local v1, "c":C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 143
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    .line 144
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 145
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 148
    .end local v1    # "c":C
    :cond_5
    if-eqz v0, :cond_6

    .line 149
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v3, 0x1

    .line 153
    goto :goto_1

    .line 154
    .end local v0    # "brace":I
    .end local v3    # "j":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 155
    .local v5, "result":[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 163
    .local v4, "n":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 164
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 166
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v6, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 168
    .local v2, "i":I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "brace":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 172
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 173
    .local v1, "c":C
    if-ne v1, v8, :cond_3

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_3
    if-ne v1, v9, :cond_4

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 177
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 180
    .end local v1    # "c":C
    :cond_5
    if-eqz v0, :cond_6

    .line 181
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 183
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v3, 0x1

    .line 185
    goto :goto_0

    .line 186
    .end local v0    # "brace":I
    .end local v3    # "j":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 187
    .local v5, "result":[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 1
    .param p1, "segment"    # J

    .prologue
    .line 72
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v3, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    if-nez v2, :cond_1

    .line 48
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    invoke-direct {v2}, Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    .line 55
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/lang/String;)V

    .line 56
    .local v0, "p":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v3

    move-object v1, v0

    .end local v0    # "p":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .local v1, "p":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 50
    .end local v1    # "p":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mChildren:Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/crop/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 51
    .restart local v0    # "p":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    if-eqz v0, :cond_0

    .line 52
    monitor-exit v3

    move-object v1, v0

    .restart local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 58
    .end local v0    # "p":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v1    # "p":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getObject()Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .locals 2

    .prologue
    .line 83
    const-class v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    const-class v2, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v2

    .line 193
    move-object v0, p0

    .line 194
    .local v0, "current":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    :try_start_0
    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-ne v0, v1, :cond_0

    .line 195
    const-string v1, ""

    monitor-exit v2

    .line 199
    :goto_0
    return-object v1

    .line 196
    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-eq v1, v3, :cond_1

    .line 197
    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    goto :goto_1

    .line 199
    :cond_1
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mSegment:Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix(I)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 210
    move-object v1, p0

    .local v1, "p":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    move v0, p1

    .line 211
    .end local p1    # "level":I
    .local v0, "level":I
    :goto_0
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "level":I
    .restart local p1    # "level":I
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move v0, p1

    .end local p1    # "level":I
    .restart local v0    # "level":I
    goto :goto_0

    .line 214
    .end local v0    # "level":I
    .restart local p1    # "level":I
    :cond_0
    iget-object v2, v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mSegment:Ljava/lang/String;

    return-object v2
.end method

.method public setObject(Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;)V
    .locals 2
    .param p1, "object"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    .prologue
    .line 76
    const-class v1, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 113
    const-class v6, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v6

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "n":I
    move-object v3, p0

    .local v3, "p":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    :goto_0
    :try_start_0
    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-eq v3, v5, :cond_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 115
    iget-object v3, v3, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    goto :goto_0

    .line 118
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    .line 119
    .local v4, "segments":[Ljava/lang/String;
    add-int/lit8 v0, v2, -0x1

    .line 120
    .local v0, "i":I
    move-object v3, p0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/data/Path;->sRoot:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-eq v3, v5, :cond_1

    .line 121
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v5, v3, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 120
    iget-object v3, v3, Lcom/sonymobile/china/photoeditor/crop/data/Path;->mParent:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 123
    :cond_1
    monitor-exit v6

    return-object v4

    .line 124
    .end local v1    # "i":I
    .end local v4    # "segments":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    const-class v4, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    monitor-enter v4

    .line 91
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "segments":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 94
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 98
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "segments":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
