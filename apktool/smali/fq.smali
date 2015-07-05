.class public final enum Lfq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfq;

.field public static final enum AD_NOT_READY_DOWNLOADING:Lfq;

.field public static final enum AD_NOT_READY_RESOLVING:Lfq;

.field public static final enum AD_SKIPPED_ON_PRELOAD:Lfq;

.field public static final enum CLIENT_ERROR:Lfq;

.field public static final enum CONTENT_NO_FILL:Lfq;

.field public static final enum DFP_ERROR:Lfq;

.field public static final enum FAILED:Lfq;

.field public static final enum PLAYBACK_ERROR:Lfq;

.field public static final enum RESUME:Lfq;

.field public static final enum SERVER_INTERNAL_ERROR:Lfq;

.field public static final enum SERVER_INVALID_REQUEST_ERROR:Lfq;

.field public static final enum SERVER_NETWORK_ERROR:Lfq;

.field public static final enum SERVER_NO_FILL_ERROR:Lfq;

.field public static final enum SERVER_OTHER_ERROR:Lfq;

.field public static final enum SKIPPED_ON_RESUME:Lfq;

.field public static final enum TIMEOUT:Lfq;

.field public static final enum failed:Lfq;

.field public static final enum skipped_on_resume:Lfq;

.field public static final enum timed_out:Lfq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lfq;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v3}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->TIMEOUT:Lfq;

    .line 6
    new-instance v0, Lfq;

    const-string v1, "DFP_ERROR"

    invoke-direct {v0, v1, v4}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->DFP_ERROR:Lfq;

    .line 7
    new-instance v0, Lfq;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->RESUME:Lfq;

    .line 8
    new-instance v0, Lfq;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->FAILED:Lfq;

    .line 9
    new-instance v0, Lfq;

    const-string v1, "SKIPPED_ON_RESUME"

    invoke-direct {v0, v1, v7}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->SKIPPED_ON_RESUME:Lfq;

    .line 10
    new-instance v0, Lfq;

    const-string v1, "CONTENT_NO_FILL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->CONTENT_NO_FILL:Lfq;

    .line 11
    new-instance v0, Lfq;

    const-string v1, "SERVER_NO_FILL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->SERVER_NO_FILL_ERROR:Lfq;

    .line 12
    new-instance v0, Lfq;

    const-string v1, "SERVER_NETWORK_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->SERVER_NETWORK_ERROR:Lfq;

    .line 13
    new-instance v0, Lfq;

    const-string v1, "SERVER_INVALID_REQUEST_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->SERVER_INVALID_REQUEST_ERROR:Lfq;

    .line 14
    new-instance v0, Lfq;

    const-string v1, "SERVER_INTERNAL_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->SERVER_INTERNAL_ERROR:Lfq;

    .line 15
    new-instance v0, Lfq;

    const-string v1, "SERVER_OTHER_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->SERVER_OTHER_ERROR:Lfq;

    .line 16
    new-instance v0, Lfq;

    const-string v1, "CLIENT_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->CLIENT_ERROR:Lfq;

    .line 17
    new-instance v0, Lfq;

    const-string v1, "PLAYBACK_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->PLAYBACK_ERROR:Lfq;

    .line 18
    new-instance v0, Lfq;

    const-string v1, "AD_SKIPPED_ON_PRELOAD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->AD_SKIPPED_ON_PRELOAD:Lfq;

    .line 19
    new-instance v0, Lfq;

    const-string v1, "AD_NOT_READY_RESOLVING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->AD_NOT_READY_RESOLVING:Lfq;

    .line 20
    new-instance v0, Lfq;

    const-string v1, "AD_NOT_READY_DOWNLOADING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->AD_NOT_READY_DOWNLOADING:Lfq;

    .line 21
    new-instance v0, Lfq;

    const-string v1, "failed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->failed:Lfq;

    .line 22
    new-instance v0, Lfq;

    const-string v1, "skipped_on_resume"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->skipped_on_resume:Lfq;

    .line 23
    new-instance v0, Lfq;

    const-string v1, "timed_out"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfq;->timed_out:Lfq;

    .line 4
    const/16 v0, 0x13

    new-array v0, v0, [Lfq;

    sget-object v1, Lfq;->TIMEOUT:Lfq;

    aput-object v1, v0, v3

    sget-object v1, Lfq;->DFP_ERROR:Lfq;

    aput-object v1, v0, v4

    sget-object v1, Lfq;->RESUME:Lfq;

    aput-object v1, v0, v5

    sget-object v1, Lfq;->FAILED:Lfq;

    aput-object v1, v0, v6

    sget-object v1, Lfq;->SKIPPED_ON_RESUME:Lfq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfq;->CONTENT_NO_FILL:Lfq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfq;->SERVER_NO_FILL_ERROR:Lfq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfq;->SERVER_NETWORK_ERROR:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfq;->SERVER_INVALID_REQUEST_ERROR:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfq;->SERVER_INTERNAL_ERROR:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfq;->SERVER_OTHER_ERROR:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfq;->CLIENT_ERROR:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfq;->PLAYBACK_ERROR:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lfq;->AD_SKIPPED_ON_PRELOAD:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lfq;->AD_NOT_READY_RESOLVING:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lfq;->AD_NOT_READY_DOWNLOADING:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lfq;->failed:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lfq;->skipped_on_resume:Lfq;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lfq;->timed_out:Lfq;

    aput-object v2, v0, v1

    sput-object v0, Lfq;->$VALUES:[Lfq;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfq;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lfq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfq;

    return-object v0
.end method

.method public static values()[Lfq;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lfq;->$VALUES:[Lfq;

    invoke-virtual {v0}, [Lfq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfq;

    return-object v0
.end method
