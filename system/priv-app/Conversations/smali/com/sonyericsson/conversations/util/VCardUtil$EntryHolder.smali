.class Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
.super Ljava/lang/Object;
.source "VCardUtil.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/VCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryHolder"
.end annotation


# instance fields
.field public contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/VCardUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/util/VCardUtil$1;

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method
