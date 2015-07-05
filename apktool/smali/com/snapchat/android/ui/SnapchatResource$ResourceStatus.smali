.class public final enum Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SnapchatResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

.field public static final enum LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

.field public static final enum LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

.field public static final enum LOADING_FAILED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

.field public static final enum NOT_LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    const-string v1, "NOT_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->NOT_LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 11
    new-instance v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 12
    new-instance v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    const-string v1, "LOADING_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING_FAILED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->NOT_LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING_FAILED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->$VALUES:[Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->$VALUES:[Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    return-object v0
.end method
