.class public final Lcom/addlive/ErrorCodes$Media;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final INVALID_AUDIO_DEV:I = 0xfa5

.field public static final INVALID_AUDIO_IN_DEV:I = 0xfa3

.field public static final INVALID_AUDIO_OUT_DEV:I = 0xfa4

.field public static final INVALID_VIDEO_DEV:I = 0xfa1

.field public static final NO_AUDIO_IN_DEV:I = 0xfa2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
