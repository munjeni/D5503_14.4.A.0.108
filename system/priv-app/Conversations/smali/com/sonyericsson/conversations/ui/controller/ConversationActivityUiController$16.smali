.class synthetic Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

.field static final synthetic $SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2863
    invoke-static {}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->values()[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    .line 976
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->values()[Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->$SwitchMap$com$sonyericsson$conversations$ui$controller$ConversationActivityUiController$FragmentEnum:[I

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 2863
    :catch_4
    move-exception v0

    goto :goto_0
.end method
