.class public final enum Lfz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfz;

.field public static final enum AD_NOT_READY_DOWNLOADING:Lfz;

.field public static final enum AD_NOT_READY_RESOLVING:Lfz;

.field public static final enum AD_SKIPPED_ON_PRELOAD:Lfz;

.field public static final enum CLIENT_ERROR:Lfz;

.field public static final enum CONTENT_NO_FILL:Lfz;

.field public static final enum DFP_ERROR:Lfz;

.field public static final enum FAILED:Lfz;

.field public static final enum PLAYBACK_ERROR:Lfz;

.field public static final enum RESUME:Lfz;

.field public static final enum SERVER_INTERNAL_ERROR:Lfz;

.field public static final enum SERVER_INVALID_REQUEST_ERROR:Lfz;

.field public static final enum SERVER_NETWORK_ERROR:Lfz;

.field public static final enum SERVER_NO_FILL_ERROR:Lfz;

.field public static final enum SERVER_OTHER_ERROR:Lfz;

.field public static final enum SKIPPED_ON_RESUME:Lfz;

.field public static final enum TIMEOUT:Lfz;

.field public static final enum failed:Lfz;

.field public static final enum skipped_on_resume:Lfz;

.field public static final enum timed_out:Lfz;


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
    new-instance v0, Lfz;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v3}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->TIMEOUT:Lfz;

    .line 6
    new-instance v0, Lfz;

    const-string v1, "DFP_ERROR"

    invoke-direct {v0, v1, v4}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->DFP_ERROR:Lfz;

    .line 7
    new-instance v0, Lfz;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->RESUME:Lfz;

    .line 8
    new-instance v0, Lfz;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->FAILED:Lfz;

    .line 9
    new-instance v0, Lfz;

    const-string v1, "SKIPPED_ON_RESUME"

    invoke-direct {v0, v1, v7}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->SKIPPED_ON_RESUME:Lfz;

    .line 10
    new-instance v0, Lfz;

    const-string v1, "CONTENT_NO_FILL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->CONTENT_NO_FILL:Lfz;

    .line 11
    new-instance v0, Lfz;

    const-string v1, "SERVER_NO_FILL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->SERVER_NO_FILL_ERROR:Lfz;

    .line 12
    new-instance v0, Lfz;

    const-string v1, "SERVER_NETWORK_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->SERVER_NETWORK_ERROR:Lfz;

    .line 13
    new-instance v0, Lfz;

    const-string v1, "SERVER_INVALID_REQUEST_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->SERVER_INVALID_REQUEST_ERROR:Lfz;

    .line 14
    new-instance v0, Lfz;

    const-string v1, "SERVER_INTERNAL_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->SERVER_INTERNAL_ERROR:Lfz;

    .line 15
    new-instance v0, Lfz;

    const-string v1, "SERVER_OTHER_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->SERVER_OTHER_ERROR:Lfz;

    .line 16
    new-instance v0, Lfz;

    const-string v1, "CLIENT_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->CLIENT_ERROR:Lfz;

    .line 17
    new-instance v0, Lfz;

    const-string v1, "PLAYBACK_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->PLAYBACK_ERROR:Lfz;

    .line 18
    new-instance v0, Lfz;

    const-string v1, "AD_SKIPPED_ON_PRELOAD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->AD_SKIPPED_ON_PRELOAD:Lfz;

    .line 19
    new-instance v0, Lfz;

    const-string v1, "AD_NOT_READY_RESOLVING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->AD_NOT_READY_RESOLVING:Lfz;

    .line 20
    new-instance v0, Lfz;

    const-string v1, "AD_NOT_READY_DOWNLOADING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->AD_NOT_READY_DOWNLOADING:Lfz;

    .line 21
    new-instance v0, Lfz;

    const-string v1, "failed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->failed:Lfz;

    .line 22
    new-instance v0, Lfz;

    const-string v1, "skipped_on_resume"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->skipped_on_resume:Lfz;

    .line 23
    new-instance v0, Lfz;

    const-string v1, "timed_out"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->timed_out:Lfz;

    .line 4
    const/16 v0, 0x13

    new-array v0, v0, [Lfz;

    sget-object v1, Lfz;->TIMEOUT:Lfz;

    aput-object v1, v0, v3

    sget-object v1, Lfz;->DFP_ERROR:Lfz;

    aput-object v1, v0, v4

    sget-object v1, Lfz;->RESUME:Lfz;

    aput-object v1, v0, v5

    sget-object v1, Lfz;->FAILED:Lfz;

    aput-object v1, v0, v6

    sget-object v1, Lfz;->SKIPPED_ON_RESUME:Lfz;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfz;->CONTENT_NO_FILL:Lfz;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfz;->SERVER_NO_FILL_ERROR:Lfz;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfz;->SERVER_NETWORK_ERROR:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfz;->SERVER_INVALID_REQUEST_ERROR:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfz;->SERVER_INTERNAL_ERROR:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfz;->SERVER_OTHER_ERROR:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfz;->CLIENT_ERROR:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfz;->PLAYBACK_ERROR:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lfz;->AD_SKIPPED_ON_PRELOAD:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lfz;->AD_NOT_READY_RESOLVING:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lfz;->AD_NOT_READY_DOWNLOADING:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lfz;->failed:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lfz;->skipped_on_resume:Lfz;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lfz;->timed_out:Lfz;

    aput-object v2, v0, v1

    sput-object v0, Lfz;->$VALUES:[Lfz;

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

.method public static valueOf(Ljava/lang/String;)Lfz;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lfz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfz;

    return-object v0
.end method

.method public static values()[Lfz;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lfz;->$VALUES:[Lfz;

    invoke-virtual {v0}, [Lfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfz;

    return-object v0
.end method
