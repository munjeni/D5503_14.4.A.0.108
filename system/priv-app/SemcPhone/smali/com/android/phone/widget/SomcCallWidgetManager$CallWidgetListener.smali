.class public interface abstract Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;
.super Ljava/lang/Object;
.source "SomcCallWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallWidgetListener"
.end annotation


# virtual methods
.method public abstract onMenuUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWidgetUpdate(Landroid/widget/RemoteViews;I)V
.end method
