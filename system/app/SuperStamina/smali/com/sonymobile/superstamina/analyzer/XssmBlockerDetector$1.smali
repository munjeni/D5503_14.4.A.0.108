.class Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$1;
.super Ljava/lang/Object;
.source "XssmBlockerDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$1;->this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$1;->this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->onTimeout()V

    .line 103
    return-void
.end method
