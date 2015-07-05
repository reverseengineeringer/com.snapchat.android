.class public Lcom/addlive/view/VideoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/view/VideoRenderer$1;
    }
.end annotation


# static fields
.field private static final CIRCLE_SHADER_SRC:Ljava/lang/String; = "precision mediump float;                                              \nvarying vec2 TexCoordOut;                                             \nvarying vec2 TexCoordOutUV;                                           \nuniform sampler2D TextureY;                                           \nuniform sampler2D TextureU;                                           \nuniform sampler2D TextureV;                                           \nuniform float CircleRadius;                                           \nuniform float xScale;                                                 \nuniform float yScale;                                                 \nconst mat3 yuv2rgb = mat3(                                            \n  1, 1, 1,                                                            \n  0, -0.18732, 1.8556,                                                \n  1.57481, -0.46813, 0);                                              \nvoid main(void) {                                                     \n  vec3 yuv;                                                           \n  vec3 rgb;                                                           \n  float xadj = (TexCoordOut.x - 0.5) * xScale;                        \n  float yadj = (TexCoordOut.y - 0.5) * yScale;                        \n  float radius = distance(vec2(xadj, yadj), vec2(0.0, 0.0));          \n  float inCircle = float(radius < CircleRadius);                      \n  yuv.x = (texture2D(TextureY, TexCoordOut).r ) * inCircle;           \n  yuv.y = (texture2D(TextureU, TexCoordOutUV).r - 0.5) * inCircle;    \n  yuv.z = (texture2D(TextureV, TexCoordOutUV).r - 0.5) * inCircle;    \n  rgb = yuv2rgb * yuv;                                                \n  gl_FragColor = vec4(rgb, inCircle);                                 \n}                                                                     \n"

.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"

.field private static final RECT_SHADER_SRC:Ljava/lang/String; = "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n"

.field private static final SIZE_FLOAT:I = 0x4

.field private static final SIZE_SHORT:I = 0x2

.field private static final VERTEX_SHADER_SRC:Ljava/lang/String; = "attribute vec4 Position;                              \nattribute vec2 TexCoordIn;                            \nvarying vec2 TexCoordOut;\t                           \nvarying vec2 TexCoordOutUV;\t                   \nuniform float ScaleUV;                                \nvoid main(void) {                                     \n  gl_Position = Position;\t                           \n  TexCoordOut = TexCoordIn;                           \n  TexCoordOutUV = vec2(ScaleUV, 1) * TexCoordIn;      \n}                                                     \n"


# instance fields
.field private FRAGMENT_SHADER_SRC:Ljava/lang/String;

.field private circleCoordSlot:I

.field private circleRadius:I

.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private mirror:Z

.field private positionSlot:I

.field private program:I

.field private rendererId:I

.field private scaleUV:F

.field private scaleUniformUV:I

.field private srfHeight:I

.field private srfRadius:F

.field private srfWidth:I

.field private texCoordSlot:I

.field private texHeight:I

.field private texU:I

.field private texUniformU:I

.field private texUniformV:I

.field private texUniformY:I

.field private texV:I

.field private texWidth:I

.field private texY:I

.field private type:Lcom/addlive/view/VideoViewType;

.field private updateTextures:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private xScale:I

.field private xScaleValue:F

.field private yScale:I

.field private yScaleValue:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    .line 118
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 119
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    .line 120
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    .line 121
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    .line 122
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->circleCoordSlot:I

    .line 123
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    .line 124
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    .line 125
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    .line 126
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->scaleUniformUV:I

    .line 127
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->circleRadius:I

    .line 128
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->xScale:I

    .line 129
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->yScale:I

    .line 130
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 131
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    .line 132
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    .line 133
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 134
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 135
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    .line 136
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->scaleUV:F

    .line 138
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->srfRadius:F

    .line 139
    iput v2, p0, Lcom/addlive/view/VideoRenderer;->xScaleValue:F

    .line 140
    iput v2, p0, Lcom/addlive/view/VideoRenderer;->yScaleValue:F

    .line 141
    iput-object v3, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 142
    iput-object v3, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 143
    iput-boolean v1, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 146
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 152
    const/16 v1, 0x50

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 154
    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    .line 160
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 162
    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    sget-object v0, Lcom/addlive/view/VideoViewType;->RECTANGLE:Lcom/addlive/view/VideoViewType;

    iput-object v0, p0, Lcom/addlive/view/VideoRenderer;->type:Lcom/addlive/view/VideoViewType;

    .line 166
    const-string v0, "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n"

    iput-object v0, p0, Lcom/addlive/view/VideoRenderer;->FRAGMENT_SHADER_SRC:Ljava/lang/String;

    .line 167
    return-void

    .line 146
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 156
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x0s
    .end array-data
.end method

.method public constructor <init>(Lcom/addlive/view/VideoViewType;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    .line 118
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 119
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    .line 120
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    .line 121
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    .line 122
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->circleCoordSlot:I

    .line 123
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    .line 124
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    .line 125
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    .line 126
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->scaleUniformUV:I

    .line 127
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->circleRadius:I

    .line 128
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->xScale:I

    .line 129
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->yScale:I

    .line 130
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 131
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    .line 132
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    .line 133
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 134
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 135
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    .line 136
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->scaleUV:F

    .line 138
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->srfRadius:F

    .line 139
    iput v2, p0, Lcom/addlive/view/VideoRenderer;->xScaleValue:F

    .line 140
    iput v2, p0, Lcom/addlive/view/VideoRenderer;->yScaleValue:F

    .line 141
    iput-object v3, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 142
    iput-object v3, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 143
    iput-boolean v1, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 170
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 176
    const/16 v1, 0x50

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 178
    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    .line 184
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 186
    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 188
    iput-object p1, p0, Lcom/addlive/view/VideoRenderer;->type:Lcom/addlive/view/VideoViewType;

    .line 190
    sget-object v0, Lcom/addlive/view/VideoRenderer$1;->$SwitchMap$com$addlive$view$VideoViewType:[I

    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->type:Lcom/addlive/view/VideoViewType;

    invoke-virtual {v1}, Lcom/addlive/view/VideoViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    const-string v0, "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n"

    iput-object v0, p0, Lcom/addlive/view/VideoRenderer;->FRAGMENT_SHADER_SRC:Ljava/lang/String;

    .line 200
    :goto_0
    return-void

    .line 192
    :pswitch_0
    const-string v0, "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n"

    iput-object v0, p0, Lcom/addlive/view/VideoRenderer;->FRAGMENT_SHADER_SRC:Ljava/lang/String;

    goto :goto_0

    .line 195
    :pswitch_1
    const-string v0, "precision mediump float;                                              \nvarying vec2 TexCoordOut;                                             \nvarying vec2 TexCoordOutUV;                                           \nuniform sampler2D TextureY;                                           \nuniform sampler2D TextureU;                                           \nuniform sampler2D TextureV;                                           \nuniform float CircleRadius;                                           \nuniform float xScale;                                                 \nuniform float yScale;                                                 \nconst mat3 yuv2rgb = mat3(                                            \n  1, 1, 1,                                                            \n  0, -0.18732, 1.8556,                                                \n  1.57481, -0.46813, 0);                                              \nvoid main(void) {                                                     \n  vec3 yuv;                                                           \n  vec3 rgb;                                                           \n  float xadj = (TexCoordOut.x - 0.5) * xScale;                        \n  float yadj = (TexCoordOut.y - 0.5) * yScale;                        \n  float radius = distance(vec2(xadj, yadj), vec2(0.0, 0.0));          \n  float inCircle = float(radius < CircleRadius);                      \n  yuv.x = (texture2D(TextureY, TexCoordOut).r ) * inCircle;           \n  yuv.y = (texture2D(TextureU, TexCoordOutUV).r - 0.5) * inCircle;    \n  yuv.z = (texture2D(TextureV, TexCoordOutUV).r - 0.5) * inCircle;    \n  rgb = yuv2rgb * yuv;                                                \n  gl_FragColor = vec4(rgb, inCircle);                                 \n}                                                                     \n"

    iput-object v0, p0, Lcom/addlive/view/VideoRenderer;->FRAGMENT_SHADER_SRC:Ljava/lang/String;

    goto :goto_0

    .line 170
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 180
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x0s
    .end array-data

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private align4(I)I
    .locals 1

    .prologue
    .line 538
    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, -0x4

    return v0
.end method

.method private allocTextures(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1909

    .line 369
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/addlive/view/VideoRenderer;->newTexture(IIILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 370
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/addlive/view/VideoRenderer;->newTexture(IIILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    .line 371
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/addlive/view/VideoRenderer;->newTexture(IIILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    .line 373
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 374
    iput p2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 375
    return-void
.end method

.method private clearTextures()V
    .locals 10

    .prologue
    const/16 v6, 0x1909

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 384
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    if-nez v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v2

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v2, v1

    .line 389
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 390
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    :cond_2
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 393
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 394
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v4

    iget v5, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 399
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v2

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v2, v1

    .line 401
    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 402
    const/16 v3, -0x80

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 404
    :cond_3
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 405
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 406
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v4

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 411
    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 412
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 413
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v4

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto/16 :goto_0
.end method

.method private createShader(ILjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 337
    if-nez v0, :cond_0

    .line 338
    const-string v0, "AddLive_SDK"

    const-string v1, "Error creating shader."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating shader."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 343
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 345
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 346
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 349
    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 350
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 352
    const-string v0, "AddLive_SDK"

    const-string v1, "Error compiling shader."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error compiling shader."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    return v0
.end method

.method private deallocTextures()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 378
    new-array v0, v4, [I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    aput v2, v0, v1

    .line 379
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 381
    return-void
.end method

.method private initShaders()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    const v0, 0x8b31

    const-string v1, "attribute vec4 Position;                              \nattribute vec2 TexCoordIn;                            \nvarying vec2 TexCoordOut;\t                           \nvarying vec2 TexCoordOutUV;\t                   \nuniform float ScaleUV;                                \nvoid main(void) {                                     \n  gl_Position = Position;\t                           \n  TexCoordOut = TexCoordIn;                           \n  TexCoordOutUV = vec2(ScaleUV, 1) * TexCoordIn;      \n}                                                     \n"

    invoke-direct {p0, v0, v1}, Lcom/addlive/view/VideoRenderer;->createShader(ILjava/lang/String;)I

    move-result v0

    .line 288
    const v1, 0x8b30

    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->FRAGMENT_SHADER_SRC:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/addlive/view/VideoRenderer;->createShader(ILjava/lang/String;)I

    move-result v1

    .line 291
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/addlive/view/VideoRenderer;->program:I

    .line 293
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->program:I

    if-nez v2, :cond_0

    .line 294
    const-string v0, "AddLive_SDK"

    const-string v1, "Error creating program."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating program."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 299
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 301
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 304
    iget v1, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 306
    aget v0, v0, v3

    if-nez v0, :cond_1

    .line 307
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 309
    const-string v0, "AddLive_SDK"

    const-string v1, "Error linking program."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error linking program."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 315
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    .line 316
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TexCoordIn"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    .line 317
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "CircleCoordIn"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->circleCoordSlot:I

    .line 320
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 321
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 322
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->circleCoordSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 324
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    .line 325
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TextureU"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    .line 326
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TextureV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    .line 327
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "ScaleUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->scaleUniformUV:I

    .line 329
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "CircleRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->circleRadius:I

    .line 331
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "xScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->xScale:I

    .line 332
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "yScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->yScale:I

    .line 333
    return-void
.end method

.method private newTexture(IIILjava/nio/ByteBuffer;)I
    .locals 10

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 476
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 477
    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 478
    invoke-virtual {v9, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 480
    const/16 v2, 0xcf5

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 482
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 484
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 487
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 489
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 492
    invoke-direct {p0, p1}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v3

    const/16 v7, 0x1401

    move v2, p3

    move v4, p2

    move v5, v1

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 496
    invoke-virtual {v9, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method private renderFrame()V
    .locals 12

    .prologue
    .line 500
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    if-gez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    new-instance v0, Lcom/addlive/service/DrawRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    iget v5, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    iget v6, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    int-to-long v6, v6

    iget v8, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    int-to-long v8, v8

    iget v10, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    int-to-long v10, v10

    invoke-direct/range {v0 .. v11}, Lcom/addlive/service/DrawRequest;-><init>(IIIIIJJJ)V

    .line 506
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->draw(Lcom/addlive/service/DrawRequest;)V

    .line 508
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 511
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 514
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->scaleUniformUV:I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->scaleUV:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 515
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->circleRadius:I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfRadius:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 516
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->xScale:I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->xScaleValue:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 517
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->yScale:I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->yScaleValue:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 519
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 520
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 522
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 523
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 524
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 526
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 527
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 528
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 530
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 531
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 532
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 534
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    goto/16 :goto_0
.end method

.method private updateTexCoord()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 420
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoRenderer::updateTexCoord: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 426
    iput v2, p0, Lcom/addlive/view/VideoRenderer;->xScaleValue:F

    .line 427
    iput v7, p0, Lcom/addlive/view/VideoRenderer;->yScaleValue:F

    .line 429
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 433
    :goto_0
    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 437
    :goto_1
    iget v3, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    .line 438
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 440
    mul-float/2addr v3, v5

    div-float v0, v3, v0

    .line 441
    mul-float v3, v5, v4

    div-float v1, v3, v1

    .line 443
    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    and-int/lit8 v4, v4, -0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 444
    div-float v2, v3, v2

    .line 446
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 447
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 449
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    and-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    sub-float/2addr v4, v7

    iget v5, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/addlive/view/VideoRenderer;->scaleUV:F

    .line 451
    iget-boolean v4, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    if-nez v4, :cond_2

    .line 452
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    add-float v5, v8, v0

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 453
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sub-float v5, v7, v1

    sub-float/2addr v5, v2

    invoke-virtual {v4, v9, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 454
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x8

    sub-float v6, v7, v0

    sub-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 455
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x9

    sub-float v6, v7, v1

    sub-float v2, v6, v2

    invoke-virtual {v4, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 456
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0xd

    sub-float v5, v7, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 457
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0xe

    add-float v4, v8, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 458
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0x12

    add-float/2addr v0, v8

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 459
    iget-object v0, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x13

    add-float/2addr v1, v8

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 471
    :goto_2
    const v0, 0x8892

    const/4 v1, 0x0

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 473
    return-void

    .line 429
    :cond_0
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v0, v0

    goto/16 :goto_0

    .line 433
    :cond_1
    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v1, v1

    goto/16 :goto_1

    .line 461
    :cond_2
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sub-float v5, v7, v0

    sub-float/2addr v5, v3

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 462
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sub-float v5, v7, v1

    sub-float/2addr v5, v2

    invoke-virtual {v4, v9, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 463
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x8

    add-float v6, v8, v0

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 464
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x9

    sub-float v6, v7, v1

    sub-float v2, v6, v2

    invoke-virtual {v4, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 465
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0xd

    add-float v5, v8, v0

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 466
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0xe

    add-float v5, v8, v1

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 467
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0x12

    sub-float v0, v7, v0

    sub-float/2addr v0, v3

    invoke-virtual {v2, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 468
    iget-object v0, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x13

    add-float/2addr v1, v8

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_2
.end method

.method private updateTextures(II)V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->deallocTextures()V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/addlive/view/VideoRenderer;->allocTextures(II)V

    .line 362
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->clearTextures()V

    .line 363
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->updateTexCoord()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 366
    return-void
.end method


# virtual methods
.method public getRendererId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .prologue
    .line 245
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 246
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 248
    iget-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    invoke-direct {p0, v0, v1}, Lcom/addlive/view/VideoRenderer;->updateTextures(II)V

    .line 251
    :cond_0
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    if-lez v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->renderFrame()V

    .line 256
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 257
    return-void
.end method

.method public onResolutionChanged(II)V
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    if-ne v0, p2, :cond_0

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 275
    iput p2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    goto :goto_0
.end method

.method public onStartRendering(IZ)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 261
    iput-boolean p2, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    .line 262
    return-void
.end method

.method public onStopRendering()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 267
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->clearTextures()V

    .line 268
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoRenderer::onSurfaceChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 238
    iput p2, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    .line 239
    iput p3, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 242
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .prologue
    const v5, 0x8893

    const v4, 0x8892

    const/4 v3, 0x2

    .line 207
    const-string v0, "AddLive_SDK"

    const-string v1, "GL Details: =================="

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VERSION: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VENDOR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1f00

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RENDERER: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EXTENSION: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1f03

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "AddLive_SDK"

    const-string v1, "=============================="

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 215
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 218
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 219
    const/16 v1, 0x50

    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const v3, 0x88e0

    invoke-static {v4, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 224
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 225
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    const v2, 0x88e4

    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 229
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->initShaders()V

    .line 230
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 281
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->srfRadius:F

    .line 282
    return-void
.end method
