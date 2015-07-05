.class public final Lasu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation


# static fields
.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final IS_GALAXY_S6:Z

.field public static final IS_NEXUS_4:Z

.field public static final SUPPORTS_HEADS_UP_NOTIFICATION:Z

.field public static final SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START:Z

.field public static final SUPPORTS_NOTIFICATION_PRIORITY:Z

.field public static final SUPPORTS_TRANSPARENT_STATUS_BAR:Z

.field public static final SUPPORTS_UNEQUAL_SIZE_BITMAP_REUSE:Z

.field public static final SUPPORTS_VIDEO_PLAYBACK_FROM_INTERNAL_STORAGE:Z

.field public static final SUPPORTS_VIDEO_STABILIZATION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lasu;->SUPPORTS_NOTIFICATION_PRIORITY:Z

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lasu;->SUPPORTS_VIDEO_STABILIZATION:Z

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Lasu;->SUPPORTS_HEADS_UP_NOTIFICATION:Z

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_5

    move v0, v1

    :goto_4
    sput-boolean v0, Lasu;->SUPPORTS_UNEQUAL_SIZE_BITMAP_REUSE:Z

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Lasu;->SUPPORTS_TRANSPARENT_STATUS_BAR:Z

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_7

    move v0, v1

    :goto_6
    sput-boolean v0, Lasu;->SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START:Z

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_8

    move v0, v1

    :goto_7
    sput-boolean v0, Lasu;->SUPPORTS_VIDEO_PLAYBACK_FROM_INTERNAL_STORAGE:Z

    .line 35
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Nexus 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lasu;->IS_NEXUS_4:Z

    .line 38
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-G920"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-G925"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    :cond_0
    :goto_8
    sput-boolean v1, Lasu;->IS_GALAXY_S6:Z

    return-void

    :cond_1
    move v0, v2

    .line 20
    goto :goto_0

    :cond_2
    move v0, v2

    .line 22
    goto :goto_1

    :cond_3
    move v0, v2

    .line 23
    goto :goto_2

    :cond_4
    move v0, v2

    .line 24
    goto :goto_3

    :cond_5
    move v0, v2

    .line 25
    goto :goto_4

    :cond_6
    move v0, v2

    .line 26
    goto :goto_5

    :cond_7
    move v0, v2

    .line 27
    goto :goto_6

    :cond_8
    move v0, v2

    .line 32
    goto :goto_7

    :cond_9
    move v1, v2

    .line 38
    goto :goto_8
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 50
    :pswitch_0
    return v0

    .line 45
    :sswitch_0
    const-string v4, "m4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "htc_m8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47f6e62d -> :sswitch_1
        0xd67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/addlive/platform/ADL;->assesDeviceCompatibility()Lcom/addlive/platform/DeviceSupportLevel;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/DeviceSupportLevel;->NOT_FUNCTIONAL:Lcom/addlive/platform/DeviceSupportLevel;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
