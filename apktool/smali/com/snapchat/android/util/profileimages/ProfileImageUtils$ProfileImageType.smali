.class public final enum Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

.field public static final enum PROFILE_IMAGE_0:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

.field public static final enum PROFILE_IMAGE_1:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

.field public static final enum PROFILE_IMAGE_2:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

.field public static final enum PROFILE_IMAGE_3:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

.field public static final enum PROFILE_IMAGE_4:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    const-string v1, "PROFILE_IMAGE_0"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_0:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    .line 394
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    const-string v1, "PROFILE_IMAGE_1"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_1:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    .line 395
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    const-string v1, "PROFILE_IMAGE_2"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_2:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    .line 396
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    const-string v1, "PROFILE_IMAGE_3"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_3:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    .line 397
    new-instance v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    const-string v1, "PROFILE_IMAGE_4"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_4:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    .line 392
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_0:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_1:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_2:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_3:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->PROFILE_IMAGE_4:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->$VALUES:[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

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
    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;
    .locals 1

    .prologue
    .line 392
    const-class v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->$VALUES:[Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageType;

    return-object v0
.end method
