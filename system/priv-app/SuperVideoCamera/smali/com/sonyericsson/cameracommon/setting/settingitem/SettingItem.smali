.class public interface abstract Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"


# static fields
.field public static final INVALID_ID:I = -0x1


# virtual methods
.method public abstract compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z
.end method

.method public abstract compareData(Ljava/lang/Object;)Z
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getDialogItemType()I
.end method

.method public abstract getIconId()I
.end method

.method public abstract getSubText(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getText(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract select()V
.end method

.method public abstract setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V
.end method

.method public abstract setSelectable(Z)V
.end method

.method public abstract setSelected(Z)V
.end method
