.class Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$SaveDraftManagerHolder;
.super Ljava/lang/Object;
.source "MessagePersistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveDraftManagerHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;-><init>(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$1;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$SaveDraftManagerHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
