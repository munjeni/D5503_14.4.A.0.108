.class Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler$LinkHandlerHolder;
.super Ljava/lang/Object;
.source "LinkifyTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkHandlerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;-><init>(Lcom/sonyericsson/conversations/ui/LinkifyTextView$1;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler$LinkHandlerHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
