.class public final enum Lcom/snapchat/android/model/Friend$SuggestState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Friend$SuggestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Friend$SuggestState;

.field public static final enum ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestState;

.field public static final enum DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

.field public static final enum EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

.field public static final enum FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

.field public static final enum NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

.field public static final enum PENDING:Lcom/snapchat/android/model/Friend$SuggestState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestState;

    const-string v1, "NOT_SUGGESTION"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Friend$SuggestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 111
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Friend$SuggestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 112
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Friend$SuggestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 113
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestState;

    const-string v1, "EXISTS"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/Friend$SuggestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 114
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestState;

    const-string v1, "DOES_NOT_EXIST"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/Friend$SuggestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 115
    new-instance v0, Lcom/snapchat/android/model/Friend$SuggestState;

    const-string v1, "ADDRESS_BOOK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Friend$SuggestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/model/Friend$SuggestState;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->$VALUES:[Lcom/snapchat/android/model/Friend$SuggestState;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$SuggestState;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend$SuggestState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Friend$SuggestState;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->$VALUES:[Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Friend$SuggestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Friend$SuggestState;

    return-object v0
.end method
