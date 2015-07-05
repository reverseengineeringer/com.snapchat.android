.class public final enum Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CustomVolumeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolumeViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

.field public static final enum HERE:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

.field public static final enum MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 216
    new-instance v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    const-string v1, "HERE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->HERE:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    sget-object v1, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->HERE:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->$VALUES:[Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;
    .locals 1

    .prologue
    .line 214
    const-class v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->$VALUES:[Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    return-object v0
.end method
