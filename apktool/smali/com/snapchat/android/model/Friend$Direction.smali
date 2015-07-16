.class public final enum Lcom/snapchat/android/model/Friend$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Friend$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Friend$Direction;

.field public static final enum BOTH:Lcom/snapchat/android/model/Friend$Direction;

.field public static final enum INCOMING:Lcom/snapchat/android/model/Friend$Direction;

.field public static final enum OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

.field public static final enum UNKNOWN:Lcom/snapchat/android/model/Friend$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/snapchat/android/model/Friend$Direction;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Friend$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$Direction;->UNKNOWN:Lcom/snapchat/android/model/Friend$Direction;

    .line 127
    new-instance v0, Lcom/snapchat/android/model/Friend$Direction;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Friend$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    .line 128
    new-instance v0, Lcom/snapchat/android/model/Friend$Direction;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Friend$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    .line 129
    new-instance v0, Lcom/snapchat/android/model/Friend$Direction;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Friend$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->UNKNOWN:Lcom/snapchat/android/model/Friend$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/model/Friend$Direction;->$VALUES:[Lcom/snapchat/android/model/Friend$Direction;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;
    .locals 1

    .prologue
    .line 134
    :try_start_0
    invoke-static {p0}, Lcom/snapchat/android/model/Friend$Direction;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->UNKNOWN:Lcom/snapchat/android/model/Friend$Direction;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/snapchat/android/model/Friend$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend$Direction;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Friend$Direction;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->$VALUES:[Lcom/snapchat/android/model/Friend$Direction;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Friend$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Friend$Direction;

    return-object v0
.end method
