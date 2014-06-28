.class public interface abstract Lcom/android/phone/widget/ISomcCallWidget;
.super Ljava/lang/Object;
.source "ISomcCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;
    }
.end annotation


# virtual methods
.method public abstract getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getDisabledIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconPressed()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getPrio()I
.end method

.method public abstract getStatus()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getVisibleDuringCall()Z
.end method

.method public abstract getVisibleOnIncomingCall()Z
.end method

.method public abstract getVisibleWhenCalling()Z
.end method

.method public abstract hasPhoneStateAccess()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setStatus(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method
