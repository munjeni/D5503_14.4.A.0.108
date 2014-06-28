.class public Lcom/android/phone/CallView$ConferenceCallItem;
.super Ljava/lang/Object;
.source "CallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConferenceCallItem"
.end annotation


# instance fields
.field public additionalCallInfo:Ljava/lang/String;

.field public conferenceCallId:Ljava/lang/Object;

.field public contactNumberIcon:Landroid/graphics/Bitmap;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConferenceCallItem()Lcom/android/phone/CallView$ConferenceCallItem;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/android/phone/CallView$ConferenceCallItem;

    invoke-direct {v0}, Lcom/android/phone/CallView$ConferenceCallItem;-><init>()V

    return-object v0
.end method
