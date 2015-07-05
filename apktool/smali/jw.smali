.class public final enum Ljw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljw;

.field public static final enum EMAIL_EXISTS:Ljw;

.field public static final enum EMAIL_INVALID:Ljw;

.field public static final enum PASSWORD_TOO_COMMON:Ljw;

.field public static final enum PASSWORD_TOO_EASY:Ljw;

.field public static final enum PASSWORD_TOO_SHORT:Ljw;

.field public static final enum PASSWORD_TOO_SIMILAR_TO_EMAIL:Ljw;

.field public static final enum PASSWORD_TOO_SIMILAR_TO_USERNAME:Ljw;


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
    new-instance v0, Ljw;

    const-string v1, "EMAIL_INVALID"

    invoke-direct {v0, v1, v3}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->EMAIL_INVALID:Ljw;

    .line 6
    new-instance v0, Ljw;

    const-string v1, "EMAIL_EXISTS"

    invoke-direct {v0, v1, v4}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->EMAIL_EXISTS:Ljw;

    .line 7
    new-instance v0, Ljw;

    const-string v1, "PASSWORD_TOO_SHORT"

    invoke-direct {v0, v1, v5}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->PASSWORD_TOO_SHORT:Ljw;

    .line 8
    new-instance v0, Ljw;

    const-string v1, "PASSWORD_TOO_COMMON"

    invoke-direct {v0, v1, v6}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->PASSWORD_TOO_COMMON:Ljw;

    .line 9
    new-instance v0, Ljw;

    const-string v1, "PASSWORD_TOO_EASY"

    invoke-direct {v0, v1, v7}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->PASSWORD_TOO_EASY:Ljw;

    .line 10
    new-instance v0, Ljw;

    const-string v1, "PASSWORD_TOO_SIMILAR_TO_USERNAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->PASSWORD_TOO_SIMILAR_TO_USERNAME:Ljw;

    .line 11
    new-instance v0, Ljw;

    const-string v1, "PASSWORD_TOO_SIMILAR_TO_EMAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw;->PASSWORD_TOO_SIMILAR_TO_EMAIL:Ljw;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Ljw;

    sget-object v1, Ljw;->EMAIL_INVALID:Ljw;

    aput-object v1, v0, v3

    sget-object v1, Ljw;->EMAIL_EXISTS:Ljw;

    aput-object v1, v0, v4

    sget-object v1, Ljw;->PASSWORD_TOO_SHORT:Ljw;

    aput-object v1, v0, v5

    sget-object v1, Ljw;->PASSWORD_TOO_COMMON:Ljw;

    aput-object v1, v0, v6

    sget-object v1, Ljw;->PASSWORD_TOO_EASY:Ljw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljw;->PASSWORD_TOO_SIMILAR_TO_USERNAME:Ljw;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljw;->PASSWORD_TOO_SIMILAR_TO_EMAIL:Ljw;

    aput-object v2, v0, v1

    sput-object v0, Ljw;->$VALUES:[Ljw;

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

.method public static valueOf(Ljava/lang/String;)Ljw;
    .locals 1

    .prologue
    .line 4
    const-class v0, Ljw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljw;

    return-object v0
.end method

.method public static values()[Ljw;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Ljw;->$VALUES:[Ljw;

    invoke-virtual {v0}, [Ljw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljw;

    return-object v0
.end method
