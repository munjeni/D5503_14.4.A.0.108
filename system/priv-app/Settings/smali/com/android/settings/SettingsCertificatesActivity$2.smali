.class final Lcom/android/settings/SettingsCertificatesActivity$2;
.super Ljava/lang/Object;
.source "SettingsCertificatesActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsCertificatesActivity;->getFileNameWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$regExSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/SettingsCertificatesActivity$2;->val$regExSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/SettingsCertificatesActivity$2;->val$regExSuffix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
