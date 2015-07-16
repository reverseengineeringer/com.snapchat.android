.class public final Lbau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbau$a;
    }
.end annotation


# static fields
.field public static final NUMBER_OF_DATA_POINTS:I = 0x14

.field protected static final SHAKE_COUNT_THRESHOLD:I = 0x2

.field private static final THRESHOLD:F = 18.0f


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mBufferIndex:I

.field private mBufferX:[F

.field private mBufferY:[F

.field private mBufferZ:[F

.field public mBugReporter:Lbau$a;

.field public mCanSendReports:Z

.field private mIsBufferFilled:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lbau;->mBufferX:[F

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lbau;->mBufferY:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lbau;->mBufferZ:[F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbau;->mIsBufferFilled:Z

    .line 37
    return-void
.end method

.method private static a([FFF)F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 134
    array-length v4, p0

    move v3, v2

    move v1, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, p0, v3

    .line 135
    cmpg-float v5, v0, v1

    if-gez v5, :cond_3

    .line 134
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    array-length v4, p0

    move v3, v2

    move v2, p2

    :goto_2
    if-ge v3, v4, :cond_1

    aget v0, p0, v3

    .line 139
    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    .line 138
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 142
    :cond_1
    sub-float v0, v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lbau;->mIsBufferFilled:Z

    .line 148
    iput v0, p0, Lbau;->mBufferIndex:I

    .line 149
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbau;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 52
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lbau;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbau;->mCanSendReports:Z

    .line 61
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const/high16 v8, 0x41900000    # 18.0f

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    aput v3, v2, v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    aput v3, v2, v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    aput v3, v2, v6

    iget-object v3, p0, Lbau;->mBufferX:[F

    iget v4, p0, Lbau;->mBufferIndex:I

    aget v5, v2, v1

    aput v5, v3, v4

    iget-object v3, p0, Lbau;->mBufferY:[F

    iget v4, p0, Lbau;->mBufferIndex:I

    aget v5, v2, v0

    aput v5, v3, v4

    iget-object v3, p0, Lbau;->mBufferZ:[F

    iget v4, p0, Lbau;->mBufferIndex:I

    aget v2, v2, v6

    aput v2, v3, v4

    iget v2, p0, Lbau;->mBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbau;->mBufferIndex:I

    iget v2, p0, Lbau;->mBufferIndex:I

    iget-object v3, p0, Lbau;->mBufferX:[F

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iput-boolean v0, p0, Lbau;->mIsBufferFilled:Z

    iput v1, p0, Lbau;->mBufferIndex:I

    :cond_0
    iget-boolean v2, p0, Lbau;->mIsBufferFilled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lbau;->mBufferX:[F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2, v3, v7}, Lbau;->a([FFF)F

    move-result v2

    iget-object v3, p0, Lbau;->mBufferY:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3, v4, v7}, Lbau;->a([FFF)F

    move-result v3

    iget-object v4, p0, Lbau;->mBufferZ:[F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v4, v5, v7}, Lbau;->a([FFF)F

    move-result v4

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_1

    cmpl-float v2, v3, v8

    if-gtz v2, :cond_1

    cmpl-float v2, v4, v8

    if-lez v2, :cond_5

    :cond_1
    iget v2, p0, Lbau;->mShakeCount:I

    if-le v2, v6, :cond_3

    iput v1, p0, Lbau;->mShakeCount:I

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbau;->mCanSendReports:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lbau;->mCanSendReports:Z

    iget-object v0, p0, Lbau;->mBugReporter:Lbau$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbau;->mBugReporter:Lbau$a;

    iget-object v1, p0, Lbau;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p0}, Lbau$a;->a(Landroid/app/Activity;Lbau;)V

    .line 66
    :cond_2
    return-void

    .line 65
    :cond_3
    iget v0, p0, Lbau;->mShakeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbau;->mShakeCount:I

    invoke-direct {p0}, Lbau;->c()V

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iput v1, p0, Lbau;->mShakeCount:I

    goto :goto_1
.end method
