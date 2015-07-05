.class public final enum Lcom/snapchat/android/model/Mediabryo$SnapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Mediabryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Mediabryo$SnapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Mediabryo$SnapType;

.field public static final enum DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

.field public static final enum SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SnapType;

    const-string v1, "SNAP"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Mediabryo$SnapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    .line 34
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SnapType;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Mediabryo$SnapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SnapType;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$SnapType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$SnapType;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Mediabryo$SnapType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Mediabryo$SnapType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SnapType;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Mediabryo$SnapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Mediabryo$SnapType;

    return-object v0
.end method
