.class Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/SuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_COLUMN:I = 0x1

.field private static final INTENT_DATA_COLUMN:I = 0x0

.field private static final INTENT_EXTRA_DATA_COLUMN:I = 0x2

.field private static final INTENT_TEXT_COLUMN:I = 0x3


# instance fields
.field mColumnCount:I

.field mCurrentRow:I

.field mDatabaseCursor:Landroid/database/Cursor;

.field mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualColumns:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    .line 227
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "suggest_intent_data"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "suggest_intent_action"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "suggest_intent_extra_data"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "suggest_text_1"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->computeRows()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private computeOffsets(Ljava/lang/String;)[I
    .locals 4
    .param p1, "offsetsString"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "vals":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 167
    .local v1, "retvals":[I
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 168
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    :cond_0
    return-object v1
.end method

.method private computeRows()V
    .locals 17

    .prologue
    .line 135
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v9, "got":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v2, "index_text"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 138
    .local v15, "textColumn":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v2, "offsets(words)"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 140
    .local v14, "offsetsColumn":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 141
    .local v8, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->computeOffsets(Ljava/lang/String;)[I

    move-result-object v13

    .line 146
    .local v13, "offsets":[I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    array-length v1, v13

    if-ge v10, v1, :cond_1

    .line 149
    add-int/lit8 v1, v10, 0x2

    aget v5, v13, v1

    .line 150
    .local v5, "startOffset":I
    add-int/lit8 v1, v10, 0x3

    aget v12, v13, v1

    .line 151
    .local v12, "length":I
    add-int v6, v5, v12

    .line 152
    .local v6, "endOffset":I
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "candidate":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_2
    add-int/lit8 v10, v10, 0x4

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;-><init>(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    .end local v5    # "startOffset":I
    .end local v6    # "endOffset":I
    .end local v7    # "candidate":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "length":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    .end local v4    # "message":Ljava/lang/String;
    .end local v10    # "j":I
    .end local v13    # "offsets":[I
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 329
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 333
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getCount()I

    move-result v1

    .line 175
    .local v1, "count":I
    if-ltz p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    if-le p1, v6, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getPosition()I

    move-result v4

    .line 181
    .local v4, "oldpos":I
    move v5, p1

    .line 182
    .local v5, "pos":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 183
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getColumnCount()I

    move-result v0

    .line 185
    .local v0, "columnNum":I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 186
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 188
    invoke-virtual {p0, v3}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "field":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {p2, v2, v5, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 191
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 201
    .end local v2    # "field":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    .restart local v2    # "field":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v5, v3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 196
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 204
    .end local v0    # "columnNum":I
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "oldpos":I
    .end local v5    # "pos":I
    :catch_0
    move-exception v6

    .line 207
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    .line 187
    .restart local v0    # "columnNum":I
    .restart local v2    # "field":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "oldpos":I
    .restart local v5    # "pos":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 203
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    .end local v0    # "columnNum":I
    .end local v4    # "oldpos":I
    .end local v5    # "pos":I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v6
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    add-int/2addr v1, v0

    .line 254
    :goto_1
    return v1

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "x":[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 261
    .local v2, "y":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 262
    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 266
    array-length v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 365
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .param p1, "column"    # I

    .prologue
    .line 303
    iget v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    if-ge p1, v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    :goto_0
    return-object v2

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    .line 308
    .local v0, "row":Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
    iget v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    sub-int v2, p1, v2

    packed-switch v2, :pswitch_data_0

    .line 319
    const/4 v2, 0x0

    goto :goto_0

    .line 310
    :pswitch_0
    const-string v2, "content://mms-sms/search"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pattern"

    invoke-virtual {v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 313
    .end local v1    # "u":Landroid/net/Uri;
    :pswitch_1
    const-string v2, "android.intent.action.SEARCH"

    goto :goto_0

    .line 315
    :pswitch_2
    const-string v2, "suggest_text_1"

    invoke-virtual {p0, v2}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 317
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->getWord()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 381
    const/4 v0, 0x3

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 214
    .local v0, "window":Landroid/database/CursorWindow;
    return-object v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 401
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 283
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 273
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 274
    iput p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    .line 275
    iget-object v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    iget v0, v0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 410
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 414
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 426
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 430
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 434
    return-void
.end method
