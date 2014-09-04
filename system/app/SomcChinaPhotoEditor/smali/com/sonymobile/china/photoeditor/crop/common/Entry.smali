.class public abstract Lcom/sonymobile/china/photoeditor/crop/common/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;,
        Lcom/sonymobile/china/photoeditor/crop/common/Entry$Table;,
        Lcom/sonymobile/china/photoeditor/crop/common/Entry$Columns;
    }
.end annotation


# static fields
.field public static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public id:J
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->id:J

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/Entry;->id:J

    .line 58
    return-void
.end method
