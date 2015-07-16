.class public final enum Lko;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lko;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lko;

.field public static final enum EMAIL_EXISTS:Lko;

.field public static final enum EMAIL_INVALID:Lko;

.field public static final enum PASSWORD_TOO_COMMON:Lko;

.field public static final enum PASSWORD_TOO_EASY:Lko;

.field public static final enum PASSWORD_TOO_SHORT:Lko;

.field public static final enum PASSWORD_TOO_SIMILAR_TO_EMAIL:Lko;

.field public static final enum PASSWORD_TOO_SIMILAR_TO_USERNAME:Lko;


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
    new-instance v0, Lko;

    const-string v1, "EMAIL_INVALID"

    invoke-direct {v0, v1, v3}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->EMAIL_INVALID:Lko;

    .line 6
    new-instance v0, Lko;

    const-string v1, "EMAIL_EXISTS"

    invoke-direct {v0, v1, v4}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->EMAIL_EXISTS:Lko;

    .line 7
    new-instance v0, Lko;

    const-string v1, "PASSWORD_TOO_SHORT"

    invoke-direct {v0, v1, v5}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->PASSWORD_TOO_SHORT:Lko;

    .line 8
    new-instance v0, Lko;

    const-string v1, "PASSWORD_TOO_COMMON"

    invoke-direct {v0, v1, v6}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->PASSWORD_TOO_COMMON:Lko;

    .line 9
    new-instance v0, Lko;

    const-string v1, "PASSWORD_TOO_EASY"

    invoke-direct {v0, v1, v7}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->PASSWORD_TOO_EASY:Lko;

    .line 10
    new-instance v0, Lko;

    const-string v1, "PASSWORD_TOO_SIMILAR_TO_USERNAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->PASSWORD_TOO_SIMILAR_TO_USERNAME:Lko;

    .line 11
    new-instance v0, Lko;

    const-string v1, "PASSWORD_TOO_SIMILAR_TO_EMAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lko;->PASSWORD_TOO_SIMILAR_TO_EMAIL:Lko;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lko;

    sget-object v1, Lko;->EMAIL_INVALID:Lko;

    aput-object v1, v0, v3

    sget-object v1, Lko;->EMAIL_EXISTS:Lko;

    aput-object v1, v0, v4

    sget-object v1, Lko;->PASSWORD_TOO_SHORT:Lko;

    aput-object v1, v0, v5

    sget-object v1, Lko;->PASSWORD_TOO_COMMON:Lko;

    aput-object v1, v0, v6

    sget-object v1, Lko;->PASSWORD_TOO_EASY:Lko;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lko;->PASSWORD_TOO_SIMILAR_TO_USERNAME:Lko;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lko;->PASSWORD_TOO_SIMILAR_TO_EMAIL:Lko;

    aput-object v2, v0, v1

    sput-object v0, Lko;->$VALUES:[Lko;

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

.method public static valueOf(Ljava/lang/String;)Lko;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lko;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lko;

    return-object v0
.end method

.method public static values()[Lko;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lko;->$VALUES:[Lko;

    invoke-virtual {v0}, [Lko;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lko;

    return-object v0
.end method
