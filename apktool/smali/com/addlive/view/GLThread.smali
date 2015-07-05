.class public Lcom/addlive/view/GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/view/GLThread$1;,
        Lcom/addlive/view/GLThread$GLThreadManager;,
        Lcom/addlive/view/GLThread$EglHelper;,
        Lcom/addlive/view/GLThread$CircleEGLConfigChooser;,
        Lcom/addlive/view/GLThread$SimpleEGLConfigChooser;,
        Lcom/addlive/view/GLThread$ComponentSizeChooser;,
        Lcom/addlive/view/GLThread$BaseConfigChooser;,
        Lcom/addlive/view/GLThread$EGLConfigChooser;,
        Lcom/addlive/view/GLThread$DefaultWindowSurfaceFactory;,
        Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;,
        Lcom/addlive/view/GLThread$DefaultContextFactory;,
        Lcom/addlive/view/GLThread$EGLContextFactory;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;


# instance fields
.field private mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mPreserveEGLContextOnPause:Z

.field private mRenderComplete:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field private surface:Landroid/graphics/SurfaceTexture;

.field private type:Lcom/addlive/view/VideoViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 906
    new-instance v0, Lcom/addlive/view/GLThread$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/addlive/view/GLThread$GLThreadManager;-><init>(Lcom/addlive/view/GLThread$1;)V

    sput-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    return-void
.end method

.method constructor <init>(Landroid/opengl/GLSurfaceView$Renderer;Lcom/addlive/view/VideoViewType;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 40
    iput-boolean v2, p0, Lcom/addlive/view/GLThread;->mPreserveEGLContextOnPause:Z

    .line 41
    iput-boolean v1, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    .line 48
    iput v1, p0, Lcom/addlive/view/GLThread;->mWidth:I

    .line 49
    iput v1, p0, Lcom/addlive/view/GLThread;->mHeight:I

    .line 50
    iput-boolean v2, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 51
    iput-object p1, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 52
    iput-boolean v1, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    .line 53
    iput-object p2, p0, Lcom/addlive/view/GLThread;->type:Lcom/addlive/view/VideoViewType;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/addlive/view/GLThread;)Lcom/addlive/view/VideoViewType;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/addlive/view/GLThread;->type:Lcom/addlive/view/VideoViewType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/addlive/view/GLThread;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/addlive/view/GLThread;->mExited:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method private guardedRun()V
    .locals 15

    .prologue
    .line 97
    new-instance v0, Lcom/addlive/view/GLThread$EglHelper;

    invoke-direct {v0, p0}, Lcom/addlive/view/GLThread$EglHelper;-><init>(Lcom/addlive/view/GLThread;)V

    iput-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v2, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v1, 0x0

    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v0, 0x0

    move v13, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v1

    move v1, v13

    .line 114
    :goto_0
    :try_start_0
    sget-object v10, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    :goto_1
    :try_start_1
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mShouldExit:Z

    if-eqz v11, :cond_0

    .line 117
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 268
    :try_start_2
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 269
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 270
    monitor-exit v1

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 120
    :cond_0
    :try_start_3
    iget-object v11, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 121
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v13, v0

    move v0, v6

    move v6, v4

    move v4, v2

    move-object v2, v13

    move v14, v1

    move v1, v5

    move v5, v3

    move v3, v14

    .line 221
    :goto_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    if-eqz v2, :cond_11

    .line 224
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 225
    const/4 v2, 0x0

    move-object v13, v2

    move v2, v4

    move v4, v6

    move v6, v0

    move-object v0, v13

    move v14, v3

    move v3, v5

    move v5, v1

    move v1, v14

    .line 226
    goto :goto_0

    .line 126
    :cond_1
    :try_start_5
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    iget-boolean v12, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    if-eq v11, v12, :cond_2

    .line 127
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    .line 128
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 132
    :cond_2
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mShouldReleaseEglContext:Z

    if-eqz v11, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 134
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 135
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/addlive/view/GLThread;->mShouldReleaseEglContext:Z

    .line 136
    const/4 v3, 0x1

    .line 140
    :cond_3
    if-eqz v5, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 142
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 143
    const/4 v5, 0x0

    .line 147
    :cond_4
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-eqz v11, :cond_7

    .line 148
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 149
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mPreserveEGLContextOnPause:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Lcom/addlive/view/GLThread$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 150
    :cond_5
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 153
    :cond_6
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Lcom/addlive/view/GLThread$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 154
    iget-object v11, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v11}, Lcom/addlive/view/GLThread$EglHelper;->finish()V

    .line 159
    :cond_7
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    if-nez v11, :cond_9

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-nez v11, :cond_9

    .line 160
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v11, :cond_8

    .line 161
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 163
    :cond_8
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    .line 164
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 168
    :cond_9
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-eqz v11, :cond_a

    .line 169
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    .line 170
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 173
    :cond_a
    if-eqz v8, :cond_b

    .line 176
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 177
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 181
    :cond_b
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->readyToDraw()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 183
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-nez v11, :cond_c

    .line 184
    if-eqz v3, :cond_f

    .line 185
    const/4 v3, 0x0

    .line 200
    :cond_c
    :goto_4
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-eqz v11, :cond_d

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-nez v11, :cond_d

    .line 201
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    .line 202
    const/4 v6, 0x1

    .line 203
    const/4 v4, 0x1

    .line 206
    :cond_d
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v11, :cond_10

    .line 207
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    if-eqz v11, :cond_e

    .line 208
    const/4 v4, 0x1

    .line 209
    iget v2, p0, Lcom/addlive/view/GLThread;->mWidth:I

    .line 210
    iget v1, p0, Lcom/addlive/view/GLThread;->mHeight:I

    .line 211
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    .line 213
    :cond_e
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 215
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    move-object v13, v0

    move v0, v6

    move v6, v4

    move v4, v2

    move-object v2, v13

    move v14, v1

    move v1, v5

    move v5, v3

    move v3, v14

    .line 216
    goto/16 :goto_3

    .line 186
    :cond_f
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->tryAcquireEglContextLocked(Lcom/addlive/view/GLThread;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v11

    if-eqz v11, :cond_c

    .line 188
    :try_start_6
    iget-object v7, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v7}, Lcom/addlive/view/GLThread$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    const/4 v7, 0x1

    :try_start_7
    iput-boolean v7, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    .line 194
    const/4 v7, 0x1

    .line 196
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 221
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 271
    :catchall_2
    move-exception v0

    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 268
    :try_start_9
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 269
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 270
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_a
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->releaseEglContextLocked(Lcom/addlive/view/GLThread;)V

    .line 191
    throw v0

    .line 219
    :cond_10
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 229
    :cond_11
    if-eqz v0, :cond_15

    .line 230
    :try_start_b
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    iget-object v8, p0, Lcom/addlive/view/GLThread;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v8}, Lcom/addlive/view/GLThread$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 231
    if-nez v0, :cond_12

    .line 233
    const-string v0, "AddLive_SDK"

    const-string v1, "Failed to create an OpenGL Surface. Ending the GLThread run loop"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 267
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 268
    :try_start_c
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 269
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 270
    monitor-exit v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    .line 237
    :cond_12
    :try_start_d
    sget-object v8, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v8, v0}, Lcom/addlive/view/GLThread$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 238
    const/4 v8, 0x0

    move-object v9, v0

    .line 241
    :goto_5
    if-eqz v7, :cond_13

    .line 242
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v7, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    iget-object v7, v7, Lcom/addlive/view/GLThread$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v9, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 243
    const/4 v7, 0x0

    .line 246
    :cond_13
    if-eqz v6, :cond_14

    .line 247
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->purgeBuffers()V

    .line 248
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, v9, v4, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 249
    const/4 v6, 0x0

    .line 252
    :cond_14
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 254
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->swap()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v0

    if-nez v0, :cond_16

    .line 255
    const/4 v0, 0x1

    .line 259
    :goto_6
    const/4 v1, 0x1

    move-object v13, v2

    move v2, v4

    move v4, v6

    move v6, v8

    move v8, v1

    move v1, v3

    move v3, v5

    move v5, v0

    move-object v0, v13

    goto/16 :goto_0

    .line 270
    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :cond_15
    move v8, v0

    goto :goto_5

    :cond_16
    move v0, v1

    goto :goto_6
.end method

.method private readyToDraw()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/addlive/view/GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/addlive/view/GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->finish()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    .line 92
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->releaseEglContextLocked(Lcom/addlive/view/GLThread;)V

    .line 94
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    .line 80
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->destroySurface()V

    .line 82
    :cond_0
    return-void
.end method

.method private waitForRenderComplete()V
    .locals 1

    .prologue
    .line 369
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/addlive/view/GLThread;->ableToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/addlive/view/GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 324
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 325
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    .line 326
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 327
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 329
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 338
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 339
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 342
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 343
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 345
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onWindowResize(II)V
    .locals 2

    .prologue
    .line 354
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 355
    :try_start_0
    iput p1, p0, Lcom/addlive/view/GLThread;->mWidth:I

    .line 356
    iput p2, p0, Lcom/addlive/view/GLThread;->mHeight:I

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 360
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 363
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->waitForRenderComplete()V

    .line 364
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 411
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 381
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 382
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mShouldExit:Z

    .line 383
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 384
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 386
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mShouldReleaseEglContext:Z

    .line 396
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 397
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 286
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 287
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 289
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 290
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/addlive/view/GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addlive/view/GLThread;->setName(Ljava/lang/String;)V

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->threadExiting(Lcom/addlive/view/GLThread;)V

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_1
    const-string v1, "AddLive_SDK"

    const-string v2, "Got an error during rendering loop"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->threadExiting(Lcom/addlive/view/GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->threadExiting(Lcom/addlive/view/GLThread;)V

    throw v0
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/addlive/view/GLThread;->surface:Landroid/graphics/SurfaceTexture;

    .line 58
    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "AddLive_SDK"

    const-string v1, "Processing surface created"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 296
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    .line 297
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 298
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 300
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    const-string v0, "AddLive_SDK"

    const-string v1, "surface created processed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 310
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 311
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    .line 312
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 313
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 315
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
