.class public final enum Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;
.super Ljava/lang/Enum;
.source "PrioritizedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

.field public static final enum FINISHED:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

.field public static final enum PENDING:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

.field public static final enum RUNNINGHIGH:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

.field public static final enum RUNNINGLOW:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->PENDING:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 174
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    const-string v1, "RUNNINGHIGH"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->RUNNINGHIGH:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 178
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    const-string v1, "RUNNINGLOW"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->RUNNINGLOW:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 182
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->FINISHED:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->PENDING:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->RUNNINGHIGH:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->RUNNINGLOW:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->FINISHED:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->$VALUES:[Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    const-class v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->$VALUES:[Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    return-object v0
.end method
