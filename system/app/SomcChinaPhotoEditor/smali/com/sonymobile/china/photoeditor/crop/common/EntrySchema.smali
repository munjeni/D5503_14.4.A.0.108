.class public final Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String;

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/china/photoeditor/crop/common/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonymobile/china/photoeditor/crop/common/Entry;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 71
    .local v1, "columns":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .line 75
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 76
    .local v4, "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, "hasFullTextIndex":Z
    if-eqz v1, :cond_1

    .line 78
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 79
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-eq v3, v5, :cond_1

    .line 80
    aget-object v0, v1, v3

    .line 81
    .local v0, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 82
    iget-boolean v5, v0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_0

    .line 83
    const/4 v2, 0x1

    .line 79
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v3    # "i":I
    :cond_1
    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mHasFullTextIndex:Z

    .line 89
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 479
    .local v9, "fields":[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v9

    if-eq v10, v0, :cond_9

    .line 481
    aget-object v6, v9, v10

    .line 482
    .local v6, "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;

    invoke-interface {v6, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;

    .line 483
    .local v11, "info":Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
    if-nez v11, :cond_0

    .line 479
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 489
    .local v8, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-ne v8, v0, :cond_1

    .line 490
    const/4 v2, 0x0

    .line 511
    .local v2, "type":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 512
    .local v7, "index":I
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    invoke-interface {v11}, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v11}, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;->fullText()Z

    move-result v4

    invoke-interface {v11}, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 491
    .end local v2    # "type":I
    .end local v7    # "index":I
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_2

    .line 492
    const/4 v2, 0x1

    .restart local v2    # "type":I
    goto :goto_2

    .line 493
    .end local v2    # "type":I
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_3

    .line 494
    const/4 v2, 0x2

    .restart local v2    # "type":I
    goto :goto_2

    .line 495
    .end local v2    # "type":I
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_4

    .line 496
    const/4 v2, 0x3

    .restart local v2    # "type":I
    goto :goto_2

    .line 497
    .end local v2    # "type":I
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_5

    .line 498
    const/4 v2, 0x4

    .restart local v2    # "type":I
    goto :goto_2

    .line 499
    .end local v2    # "type":I
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_6

    .line 500
    const/4 v2, 0x5

    .restart local v2    # "type":I
    goto :goto_2

    .line 501
    .end local v2    # "type":I
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_7

    .line 502
    const/4 v2, 0x6

    .restart local v2    # "type":I
    goto :goto_2

    .line 503
    .end local v2    # "type":I
    :cond_7
    const-class v0, [B

    if-ne v8, v0, :cond_8

    .line 504
    const/4 v2, 0x7

    .restart local v2    # "type":I
    goto :goto_2

    .line 506
    .end local v2    # "type":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field type for column: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "info":Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 465
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 466
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .line 471
    .local v0, "columnList":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 472
    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v1, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Table;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Table;

    .line 454
    .local v0, "table":Lcom/sonymobile/china/photoeditor/crop/common/Entry$Table;
    if-nez v0, :cond_0

    .line 455
    const/4 v1, 0x0

    .line 459
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/16 v13, 0x2c

    const/4 v11, 0x0

    .line 310
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 311
    .local v9, "tableName":Ljava/lang/String;
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TABLE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v8, "sql":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v10, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v1, v0, v4

    .line 318
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v10

    if-nez v10, :cond_0

    .line 319
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    sget-object v10, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v12, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->type:I

    aget-object v10, v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 324
    const-string v10, " DEFAULT "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "sql":Ljava/lang/StringBuilder;
    :cond_1
    move v10, v11

    .line 311
    goto :goto_0

    .line 329
    .restart local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "sql":Ljava/lang/StringBuilder;
    :cond_2
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 334
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    .line 336
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v10, :cond_3

    .line 337
    const-string v10, "CREATE INDEX "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v10, "_index_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v10, " ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 334
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 351
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :cond_4
    iget-boolean v10, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v10, :cond_b

    .line 353
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_fulltext"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "ftsTableName":Ljava/lang/String;
    const-string v10, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v10, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v1, v0, v4

    .line 358
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_5

    .line 360
    iget-object v2, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 361
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v10, " TEXT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .end local v2    # "columnName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 366
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :cond_6
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .local v5, "insertSql":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v10, " (_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_8

    aget-object v1, v0, v4

    .line 376
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_7

    .line 377
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 381
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :cond_8
    const-string v10, ") VALUES (new._id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_a

    aget-object v1, v0, v4

    .line 383
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_9

    .line 384
    const-string v10, ",new."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v10, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 388
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :cond_a
    const-string v10, ");"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "insertSqlString":Ljava/lang/String;
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v10, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v10, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 414
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v10, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v10, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v10, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 424
    .end local v3    # "ftsTableName":Ljava/lang/String;
    .end local v5    # "insertSql":Ljava/lang/StringBuilder;
    .end local v6    # "insertSqlString":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/sonymobile/china/photoeditor/crop/common/Entry;)Lcom/sonymobile/china/photoeditor/crop/common/Entry;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sonymobile/china/photoeditor/crop/common/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "object":Lcom/sonymobile/china/photoeditor/crop/common/Entry;, "TT;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 116
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget v2, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 117
    .local v2, "columnIndex":I
    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 118
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 115
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v8

    :goto_2
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnIndex":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 120
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v2    # "columnIndex":I
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 124
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-ne v7, v9, :cond_1

    move v7, v9

    :goto_3
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 127
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_1

    .line 130
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 133
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 136
    :pswitch_5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 139
    :pswitch_6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 142
    :pswitch_7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v8

    :goto_4
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_4

    .line 147
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnIndex":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return-object p2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "sql":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 303
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/16 v3, 0x3b

    .line 427
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 428
    .local v1, "tableName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "sql":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 434
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_0

    .line 435
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 442
    :cond_0
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 97
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 101
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :goto_1
    return v4

    .line 96
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonymobile/china/photoeditor/crop/common/Entry;)J
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "entry"    # Lcom/sonymobile/china/photoeditor/crop/common/Entry;

    .prologue
    .line 292
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->objectToValues(Lcom/sonymobile/china/photoeditor/crop/common/Entry;Landroid/content/ContentValues;)V

    .line 294
    iget-wide v3, p2, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 295
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 298
    .local v0, "id":J
    iput-wide v0, p2, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->id:J

    .line 299
    return-wide v0
.end method

.method public objectToValues(Lcom/sonymobile/china/photoeditor/crop/common/Entry;Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "object"    # Lcom/sonymobile/china/photoeditor/crop/common/Entry;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 204
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 205
    .local v2, "columnName":Ljava/lang/String;
    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 206
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 203
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :pswitch_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 233
    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 211
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v2    # "columnName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :pswitch_1
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 214
    :pswitch_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 217
    :pswitch_3
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 220
    :pswitch_4
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 223
    :pswitch_5
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 226
    :pswitch_6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 229
    :pswitch_7
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 236
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/sonymobile/china/photoeditor/crop/common/Entry;)Z
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # J
    .param p4, "entry"    # Lcom/sonymobile/china/photoeditor/crop/common/Entry;

    .prologue
    const/4 v5, 0x0

    .line 279
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mProjection:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 283
    .local v9, "success":Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, v8, p4}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/sonymobile/china/photoeditor/crop/common/Entry;)Lcom/sonymobile/china/photoeditor/crop/common/Entry;

    .line 285
    const/4 v9, 0x1

    .line 287
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 288
    return v9
.end method

.method public toDebugString(Lcom/sonymobile/china/photoeditor/crop/common/Entry;)Ljava/lang/String;
    .locals 12
    .param p1, "entry"    # Lcom/sonymobile/china/photoeditor/crop/common/Entry;

    .prologue
    .line 240
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 243
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 244
    .local v2, "columnName":Ljava/lang/String;
    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 245
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 246
    .local v8, "value":Ljava/lang/Object;
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_0

    const-string v9, "null"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 249
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 250
    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public varargs toDebugString(Lcom/sonymobile/china/photoeditor/crop/common/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "entry"    # Lcom/sonymobile/china/photoeditor/crop/common/Entry;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 257
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v0, v5

    .line 260
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 261
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    if-eqz v1, :cond_0

    .line 262
    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 263
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 264
    .local v8, "value":Ljava/lang/Object;
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_1

    const-string v9, "null"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 264
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 268
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 269
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 270
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lcom/sonymobile/china/photoeditor/crop/common/Entry;)Lcom/sonymobile/china/photoeditor/crop/common/Entry;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sonymobile/china/photoeditor/crop/common/Entry;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "object":Lcom/sonymobile/china/photoeditor/crop/common/Entry;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->mColumnInfo:[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 166
    .local v1, "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 167
    .local v2, "columnName":Ljava/lang/String;
    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 168
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 165
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 196
    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 173
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .restart local v2    # "columnName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :pswitch_1
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 179
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 185
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 191
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 195
    .end local v1    # "column":Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    return-object p2

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
