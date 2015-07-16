.class final synthetic Lavj$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lbjj$a;->values()[Lbjj$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    :try_start_0
    sget-object v0, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    sget-object v1, Lbjj$a;->TEXT:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    sget-object v1, Lbjj$a;->MEDIA:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    sget-object v1, Lbjj$a;->DISCOVER_SHARE_V2:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    sget-object v1, Lbjj$a;->SCREENSHOT:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    sget-object v1, Lbjj$a;->HERE_SCREENSHOT:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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

    :catch_4
    move-exception v0

    goto :goto_0
.end method
