.class public final enum Lcom/snapchat/android/model/Friend$SuggestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Friend$SuggestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Friend$SuggestType;

.field public static final enum ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

.field public static final enum NONE:Lcom/snapchat/android/model/Friend$SuggestType;

.field public static final enum USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestType;

    const-string v1, "USERNAME"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Friend$SuggestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 121
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestType;

    const-string v1, "ADDRESS_BOOK"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Friend$SuggestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 122
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Friend$SuggestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->NONE:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/model/Friend$SuggestType;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->NONE:Lcom/snapchat/android/model/Friend$SuggestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->$VALUES:[Lcom/snapchat/android/model/Friend$SuggestType;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$SuggestType;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend$SuggestType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Friend$SuggestType;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->$VALUES:[Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Friend$SuggestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Friend$SuggestType;

    return-object v0
.end method
