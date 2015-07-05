.class public final enum Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/MediaMailingMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field public static final enum FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field public static final enum NOT_POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field public static final enum POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field public static final enum POSTING:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field public static final enum POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field public static final enum WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v1, "NOT_POSTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 56
    new-instance v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v1, "POSTING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 58
    new-instance v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v1, "WILL_POST_AFTER_SAVE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 61
    new-instance v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v1, "POSTING_ON_UPLOAD"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 63
    new-instance v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v1, "POSTED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 65
    new-instance v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->$VALUES:[Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->$VALUES:[Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    return-object v0
.end method
