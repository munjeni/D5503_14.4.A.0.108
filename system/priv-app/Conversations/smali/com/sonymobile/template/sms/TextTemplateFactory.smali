.class public Lcom/sonymobile/template/sms/TextTemplateFactory;
.super Ljava/lang/Object;
.source "TextTemplateFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;

    invoke-direct {v0, p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
