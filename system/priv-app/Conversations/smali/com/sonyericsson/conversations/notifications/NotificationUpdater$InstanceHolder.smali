.class Lcom/sonyericsson/conversations/notifications/NotificationUpdater$InstanceHolder;
.super Ljava/lang/Object;
.source "NotificationUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/NotificationUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sonyericsson/conversations/notifications/NotificationUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;-><init>(Lcom/sonyericsson/conversations/notifications/NotificationUpdater$1;)V

    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$InstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sonyericsson/conversations/notifications/NotificationUpdater;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$InstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    return-object v0
.end method
