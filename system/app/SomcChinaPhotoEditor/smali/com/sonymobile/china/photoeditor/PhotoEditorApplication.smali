.class public Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;
.super Landroid/app/Application;
.source "PhotoEditorApplication.java"


# static fields
.field private static volatile context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->context:Landroid/content/Context;

    .line 26
    return-void
.end method
