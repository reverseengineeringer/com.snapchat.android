.class public final enum Lcom/snapchat/android/database/ClientProperty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/ClientProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/ClientProperty;

.field public static final enum SNAPCASH_NEW_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

.field public static final enum SQUARE_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/snapchat/android/database/ClientProperty;

    const-string v1, "SQUARE_TOS_ACCEPTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/database/ClientProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/database/ClientProperty;->SQUARE_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

    .line 5
    new-instance v0, Lcom/snapchat/android/database/ClientProperty;

    const-string v1, "SNAPCASH_NEW_TOS_ACCEPTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/database/ClientProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/database/ClientProperty;->SNAPCASH_NEW_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/database/ClientProperty;

    sget-object v1, Lcom/snapchat/android/database/ClientProperty;->SQUARE_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/ClientProperty;->SNAPCASH_NEW_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/database/ClientProperty;->$VALUES:[Lcom/snapchat/android/database/ClientProperty;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/ClientProperty;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/snapchat/android/database/ClientProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/ClientProperty;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/ClientProperty;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/snapchat/android/database/ClientProperty;->$VALUES:[Lcom/snapchat/android/database/ClientProperty;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/ClientProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/ClientProperty;

    return-object v0
.end method
