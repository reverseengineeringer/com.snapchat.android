.class public final enum Lcom/snapchat/android/util/chat/UrlType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/chat/UrlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/chat/UrlType;

.field public static final enum LINK:Lcom/snapchat/android/util/chat/UrlType;

.field public static final enum MAP:Lcom/snapchat/android/util/chat/UrlType;

.field public static final enum TEL:Lcom/snapchat/android/util/chat/UrlType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/util/chat/UrlType;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/chat/UrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/UrlType;->MAP:Lcom/snapchat/android/util/chat/UrlType;

    .line 8
    new-instance v0, Lcom/snapchat/android/util/chat/UrlType;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/chat/UrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/UrlType;->LINK:Lcom/snapchat/android/util/chat/UrlType;

    .line 9
    new-instance v0, Lcom/snapchat/android/util/chat/UrlType;

    const-string v1, "TEL"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/chat/UrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/UrlType;->TEL:Lcom/snapchat/android/util/chat/UrlType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/chat/UrlType;

    sget-object v1, Lcom/snapchat/android/util/chat/UrlType;->MAP:Lcom/snapchat/android/util/chat/UrlType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/chat/UrlType;->LINK:Lcom/snapchat/android/util/chat/UrlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/chat/UrlType;->TEL:Lcom/snapchat/android/util/chat/UrlType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/chat/UrlType;->$VALUES:[Lcom/snapchat/android/util/chat/UrlType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/chat/UrlType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/util/chat/UrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/UrlType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/chat/UrlType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/util/chat/UrlType;->$VALUES:[Lcom/snapchat/android/util/chat/UrlType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/chat/UrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/chat/UrlType;

    return-object v0
.end method
