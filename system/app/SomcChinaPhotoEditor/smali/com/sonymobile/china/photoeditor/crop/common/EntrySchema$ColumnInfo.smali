.class public final Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "_id"


# instance fields
.field public final defaultValue:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final fullText:Z

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final projectionIndex:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "indexed"    # Z
    .param p4, "fullText"    # Z
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "field"    # Ljava/lang/reflect/Field;
    .param p7, "projectionIndex"    # I

    .prologue
    .line 535
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 537
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->type:I

    .line 538
    iput-boolean p3, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->indexed:Z

    .line 539
    iput-boolean p4, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->fullText:Z

    .line 540
    iput-object p5, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    .line 541
    iput-object p6, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 542
    iput p7, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 545
    return-void
.end method


# virtual methods
.method public isId()Z
    .locals 2

    .prologue
    .line 548
    const-string v0, "_id"

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
