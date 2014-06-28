.class Landroid/mtp/MtpContactServiceDB$1;
.super Ljava/lang/Object;
.source "MtpContactServiceDB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpContactServiceDB;->handleData(ILandroid/mtp/MtpPropertyList;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpContactServiceDB;


# direct methods
.method constructor <init>(Landroid/mtp/MtpContactServiceDB;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Landroid/mtp/MtpContactServiceDB$1;->this$0:Landroid/mtp/MtpContactServiceDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "value1"    # Landroid/content/ContentValues;
    .param p2, "value2"    # Landroid/content/ContentValues;

    .prologue
    .line 371
    const-string v0, "_index"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "_index"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 369
    check-cast p1, Landroid/content/ContentValues;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/ContentValues;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/mtp/MtpContactServiceDB$1;->compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
