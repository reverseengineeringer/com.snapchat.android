.class public final enum Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

.field public static final enum BIG:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

.field public static final enum MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

.field public static final enum THUMBNAIL:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    const-string v1, "BIG"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->BIG:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    .line 402
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    .line 403
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->THUMBNAIL:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    .line 400
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->BIG:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->THUMBNAIL:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->$VALUES:[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

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
    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;
    .locals 1

    .prologue
    .line 400
    const-class v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->$VALUES:[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    return-object v0
.end method
