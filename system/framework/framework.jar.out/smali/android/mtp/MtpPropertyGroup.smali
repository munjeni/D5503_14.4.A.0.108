.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 80
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 81
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 83
    invoke-static {p4}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 85
    array-length v1, p5

    .line 86
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 91
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 95
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 96
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 104
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "type":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 247
    :goto_1
    return-object v2

    .line 106
    .end local v1    # "type":I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 107
    const/4 v1, 0x6

    .line 108
    .restart local v1    # "type":I
    goto :goto_0

    .line 110
    .end local v1    # "type":I
    :sswitch_1
    const-string v0, "format"

    .line 111
    const/4 v1, 0x4

    .line 112
    .restart local v1    # "type":I
    goto :goto_0

    .line 115
    .end local v1    # "type":I
    :sswitch_2
    const/4 v1, 0x4

    .line 116
    .restart local v1    # "type":I
    goto :goto_0

    .line 118
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "_size"

    .line 119
    const/16 v1, 0x8

    .line 120
    .restart local v1    # "type":I
    goto :goto_0

    .line 122
    .end local v1    # "type":I
    :sswitch_4
    const-string v0, "_data"

    .line 123
    const v1, 0xffff

    .line 124
    .restart local v1    # "type":I
    goto :goto_0

    .line 126
    .end local v1    # "type":I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 127
    const v1, 0xffff

    .line 128
    .restart local v1    # "type":I
    goto :goto_0

    .line 130
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "date_modified"

    .line 131
    const v1, 0xffff

    .line 132
    .restart local v1    # "type":I
    goto :goto_0

    .line 134
    .end local v1    # "type":I
    :sswitch_7
    const-string v0, "date_added"

    .line 135
    const v1, 0xffff

    .line 136
    .restart local v1    # "type":I
    goto :goto_0

    .line 138
    .end local v1    # "type":I
    :sswitch_8
    const-string/jumbo v0, "year"

    .line 139
    const v1, 0xffff

    .line 140
    .restart local v1    # "type":I
    goto :goto_0

    .line 142
    .end local v1    # "type":I
    :sswitch_9
    const-string/jumbo v0, "parent"

    .line 143
    const/4 v1, 0x6

    .line 144
    .restart local v1    # "type":I
    goto :goto_0

    .line 147
    .end local v1    # "type":I
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    .line 148
    const/16 v1, 0xa

    .line 149
    .restart local v1    # "type":I
    goto :goto_0

    .line 151
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "duration"

    .line 152
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto :goto_0

    .line 155
    .end local v1    # "type":I
    :sswitch_c
    const-string/jumbo v0, "track"

    .line 156
    const/4 v1, 0x4

    .line 157
    .restart local v1    # "type":I
    goto :goto_0

    .line 159
    .end local v1    # "type":I
    :sswitch_d
    const-string v0, "_display_name"

    .line 160
    const v1, 0xffff

    .line 161
    .restart local v1    # "type":I
    goto :goto_0

    .line 163
    .end local v1    # "type":I
    :sswitch_e
    const v1, 0xffff

    .line 164
    .restart local v1    # "type":I
    goto :goto_0

    .line 166
    .end local v1    # "type":I
    :sswitch_f
    const v1, 0xffff

    .line 167
    .restart local v1    # "type":I
    goto :goto_0

    .line 169
    .end local v1    # "type":I
    :sswitch_10
    const-string v0, "album_artist"

    .line 170
    const v1, 0xffff

    .line 171
    .restart local v1    # "type":I
    goto :goto_0

    .line 174
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 175
    .restart local v1    # "type":I
    goto :goto_0

    .line 177
    .end local v1    # "type":I
    :sswitch_12
    const-string v0, "composer"

    .line 178
    const v1, 0xffff

    .line 179
    .restart local v1    # "type":I
    goto :goto_0

    .line 181
    .end local v1    # "type":I
    :sswitch_13
    const-string v0, "description"

    .line 182
    const v1, 0xffff

    .line 183
    .restart local v1    # "type":I
    goto :goto_0

    .line 186
    .end local v1    # "type":I
    :sswitch_14
    const/4 v1, 0x2

    .line 187
    .restart local v1    # "type":I
    goto :goto_0

    .line 189
    .end local v1    # "type":I
    :sswitch_15
    const-string/jumbo v0, "width"

    .line 190
    const/4 v1, 0x6

    .line 191
    .restart local v1    # "type":I
    goto :goto_0

    .line 193
    .end local v1    # "type":I
    :sswitch_16
    const-string v0, "height"

    .line 194
    const/4 v1, 0x6

    .line 195
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 197
    .end local v1    # "type":I
    :sswitch_17
    const-string v0, "audiosamplerate"

    .line 198
    const/4 v1, 0x6

    .line 199
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 201
    .end local v1    # "type":I
    :sswitch_18
    const-string v0, "audionumchannels"

    .line 202
    const/4 v1, 0x4

    .line 203
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 205
    .end local v1    # "type":I
    :sswitch_19
    const-string v0, "audiowavecodec"

    .line 206
    const/4 v1, 0x6

    .line 207
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 209
    .end local v1    # "type":I
    :sswitch_1a
    const-string v0, "audiobitrate"

    .line 210
    const/4 v1, 0x6

    .line 211
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 213
    .end local v1    # "type":I
    :sswitch_1b
    const-string/jumbo v0, "videoscantype"

    .line 214
    const/4 v1, 0x4

    .line 215
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 217
    .end local v1    # "type":I
    :sswitch_1c
    const-string/jumbo v0, "videofourcccodec"

    .line 218
    const/4 v1, 0x6

    .line 219
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 221
    .end local v1    # "type":I
    :sswitch_1d
    const-string/jumbo v0, "videobitrate"

    .line 222
    const/4 v1, 0x6

    .line 223
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 225
    .end local v1    # "type":I
    :sswitch_1e
    const-string/jumbo v0, "videoframesperthousandseconds"

    .line 226
    const/4 v1, 0x6

    .line 227
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 229
    .end local v1    # "type":I
    :sswitch_1f
    const-string/jumbo v0, "videoencodingprofile"

    .line 230
    const v1, 0xffff

    .line 231
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 235
    .end local v1    # "type":I
    :sswitch_20
    const/16 v1, 0x4008

    .line 236
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 247
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto/16 :goto_1

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0xd920 -> :sswitch_20
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_14
        0xdc87 -> :sswitch_15
        0xdc88 -> :sswitch_16
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde93 -> :sswitch_17
        0xde94 -> :sswitch_18
        0xde97 -> :sswitch_1b
        0xde99 -> :sswitch_19
        0xde9a -> :sswitch_1a
        0xde9b -> :sswitch_1c
        0xde9c -> :sswitch_1d
        0xde9d -> :sswitch_1e
        0xdea1 -> :sswitch_1f
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method public static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 340
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 341
    add-int/lit8 v2, v1, 0x1

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 344
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 345
    add-int/lit16 v0, v2, 0xff

    .line 347
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 273
    const/4 v8, 0x0

    .line 275
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 278
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 286
    if-eqz v8, :cond_0

    .line 287
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    if-eqz v8, :cond_0

    .line 287
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 283
    :catch_0
    move-exception v9

    .line 286
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 287
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 286
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 287
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 293
    const/4 v8, 0x0

    .line 295
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 296
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 299
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    if-eqz v8, :cond_0

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 302
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    if-eqz v8, :cond_0

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 304
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 305
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    if-eqz v8, :cond_2

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 308
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 315
    const/4 v8, 0x0

    .line 318
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v8, :cond_0

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    if-eqz v8, :cond_2

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 330
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    if-eqz v8, :cond_2

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 252
    const/4 v8, 0x0

    .line 255
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 258
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 266
    if-eqz v8, :cond_0

    .line 267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v8, :cond_0

    .line 267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    :catch_0
    move-exception v9

    .line 266
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 266
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 33
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 352
    const/4 v2, 0x1

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 353
    :cond_0
    if-nez p1, :cond_4

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 355
    const/16 p1, -0x1

    .line 356
    const/16 p3, 0x0

    .line 367
    :cond_1
    if-nez p2, :cond_7

    .line 368
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 370
    const/4 v6, 0x0

    .line 371
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 395
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_0
    const/16 v20, 0x0

    .line 398
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 399
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 400
    if-nez v20, :cond_a

    .line 401
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    if-eqz v20, :cond_3

    .line 548
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v8

    .line 360
    :cond_4
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_1

    .line 373
    :cond_5
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 374
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 375
    const-string/jumbo v6, "parent=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v6    # "where":Ljava/lang/String;
    :cond_6
    const-string v6, "_id=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    .line 381
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_7
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 383
    const-string v6, "format=?"

    .line 384
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 387
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 388
    const-string/jumbo v6, "parent=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_0

    .line 390
    .end local v6    # "where":Ljava/lang/String;
    :cond_9
    const-string v6, "_id=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_0

    .line 405
    .restart local v20    # "c":Landroid/database/Cursor;
    :cond_a
    if-nez v20, :cond_c

    const/16 v22, 0x1

    .line 406
    .local v22, "count":I
    :goto_2
    :try_start_1
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 410
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v29, 0x0

    .local v29, "objectIndex":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_16

    .line 411
    if-eqz v20, :cond_b

    .line 412
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 417
    :cond_b
    const/16 v31, 0x0

    .local v31, "propertyIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v31

    if-ge v0, v2, :cond_15

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v30, v2, v31

    .line 419
    .local v30, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v30

    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 420
    .local v10, "propertyCode":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .line 423
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    .line 530
    move-object/from16 v0, v30

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_13

    .line 531
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 417
    :goto_5
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 405
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :cond_c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_2

    .line 426
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_0
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 544
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :catch_0
    move-exception v24

    .line 545
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    if-eqz v20, :cond_3

    .line 548
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 431
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_1
    const/4 v11, 0x4

    :try_start_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 547
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_d

    .line 548
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 443
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_2
    const/4 v11, 0x6

    :try_start_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 448
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 449
    .local v25, "encProfile":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 453
    .end local v25    # "encProfile":Ljava/lang/String;
    :sswitch_4
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 457
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 458
    .local v32, "value":Ljava/lang/String;
    if-eqz v32, :cond_e

    .line 459
    invoke-static/range {v32 .. v32}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 461
    :cond_e
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 466
    .end local v32    # "value":Ljava/lang/String;
    :sswitch_6
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 468
    .local v28, "name":Ljava/lang/String;
    if-nez v28, :cond_f

    .line 469
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 472
    :cond_f
    if-nez v28, :cond_10

    .line 473
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 474
    if-eqz v28, :cond_10

    .line 475
    invoke-static/range {v28 .. v28}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 478
    :cond_10
    if-eqz v28, :cond_11

    .line 479
    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 481
    :cond_11
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 487
    .end local v28    # "name":Ljava/lang/String;
    :sswitch_7
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 491
    :sswitch_8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d0101T000000"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 493
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 497
    .end local v23    # "dateTime":Ljava/lang/String;
    :sswitch_9
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 498
    .local v12, "puid":J
    const/16 v2, 0x20

    shl-long/2addr v12, v2

    .line 499
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    .line 500
    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 503
    .end local v12    # "puid":J
    :sswitch_a
    const/16 v17, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 507
    :sswitch_b
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 511
    :sswitch_c
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 515
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v26

    .line 516
    .local v26, "genre":Ljava/lang/String;
    if-eqz v26, :cond_12

    .line 517
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 519
    :cond_12
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 525
    .end local v26    # "genre":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/mtp/MtpDatabase;->getHostIdsAsString(I)Ljava/lang/String;

    move-result-object v27

    .line 526
    .local v27, "hostIds":Ljava/lang/String;
    const/16 v2, 0x4008

    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v10, v2, v1}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto/16 :goto_5

    .line 532
    .end local v27    # "hostIds":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v30

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_14

    .line 533
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 535
    :cond_14
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 410
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_15
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 547
    .end local v31    # "propertyIndex":I
    :cond_16
    if-eqz v20, :cond_3

    .line 548
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 423
    nop

    :sswitch_data_0
    .sparse-switch
        0xd920 -> :sswitch_e
        0xdc03 -> :sswitch_4
        0xdc07 -> :sswitch_5
        0xdc09 -> :sswitch_7
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_6
        0xdc46 -> :sswitch_b
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_0
        0xdc87 -> :sswitch_2
        0xdc88 -> :sswitch_2
        0xdc8b -> :sswitch_a
        0xdc8c -> :sswitch_d
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_c
        0xde93 -> :sswitch_2
        0xde94 -> :sswitch_1
        0xde97 -> :sswitch_1
        0xde99 -> :sswitch_2
        0xde9a -> :sswitch_2
        0xde9b -> :sswitch_2
        0xde9c -> :sswitch_2
        0xde9d -> :sswitch_2
        0xdea1 -> :sswitch_3
    .end sparse-switch
.end method
