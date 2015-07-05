.class final Lfp$e;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final A:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field final B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfp$a;",
            ">;"
        }
    .end annotation
.end field

.field C:Lfp$a;

.field private D:Landroid/graphics/Canvas;

.field private E:Ljava/lang/Float;

.field private F:Ljava/lang/Float;

.field private final G:Landroid/graphics/Matrix;

.field private H:Z

.field private I:I

.field private J:Z

.field private final K:Landroid/graphics/RectF;

.field private L:Ljava/lang/String;

.field a:Landroid/graphics/Picture;

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lfp$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/graphics/Paint;

.field d:Z

.field final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/graphics/Paint;

.field h:Z

.field final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/graphics/Paint;

.field l:Z

.field m:Ljava/lang/Float;

.field n:Ljava/lang/Float;

.field o:I

.field p:Ljava/lang/Float;

.field q:Landroid/graphics/Matrix;

.field final r:Landroid/graphics/RectF;

.field s:Landroid/graphics/RectF;

.field final t:Landroid/graphics/RectF;

.field u:Ljava/lang/Integer;

.field v:Ljava/lang/Integer;

.field w:Ljava/lang/Float;

.field x:Z

.field y:Ljava/lang/Integer;

.field final z:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 878
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 838
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->b:Ljava/util/LinkedList;

    .line 841
    iput-boolean v1, p0, Lfp$e;->d:Z

    .line 842
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->e:Ljava/util/LinkedList;

    .line 843
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->f:Ljava/util/LinkedList;

    .line 846
    iput-boolean v1, p0, Lfp$e;->h:Z

    .line 847
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->i:Ljava/util/LinkedList;

    .line 848
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->j:Ljava/util/LinkedList;

    .line 859
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfp$e;->r:Landroid/graphics/RectF;

    .line 860
    iput-object v2, p0, Lfp$e;->s:Landroid/graphics/RectF;

    .line 861
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    .line 864
    iput-object v2, p0, Lfp$e;->u:Ljava/lang/Integer;

    .line 865
    iput-object v2, p0, Lfp$e;->v:Ljava/lang/Integer;

    .line 866
    iput-object v2, p0, Lfp$e;->w:Ljava/lang/Float;

    .line 868
    iput-boolean v1, p0, Lfp$e;->x:Z

    .line 872
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->z:Ljava/util/LinkedList;

    .line 873
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfp$e;->A:Ljava/util/LinkedList;

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfp$e;->B:Ljava/util/HashMap;

    .line 876
    iput-object v2, p0, Lfp$e;->C:Lfp$a;

    .line 919
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lfp$e;->G:Landroid/graphics/Matrix;

    .line 1194
    iput-boolean v1, p0, Lfp$e;->H:Z

    .line 1195
    iput v1, p0, Lfp$e;->I:I

    .line 1196
    iput-boolean v1, p0, Lfp$e;->J:Z

    .line 1213
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfp$e;->K:Landroid/graphics/RectF;

    .line 1248
    iput-object v2, p0, Lfp$e;->L:Ljava/lang/String;

    .line 879
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    .line 880
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 881
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 882
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    .line 883
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 884
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 885
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lfp$e;->k:Landroid/graphics/Paint;

    .line 886
    iget-object v0, p0, Lfp$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 887
    iget-object v0, p0, Lfp$e;->A:Ljava/util/LinkedList;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 888
    iget-object v0, p0, Lfp$e;->b:Ljava/util/LinkedList;

    new-instance v1, Lfp$b;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lfp$b;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 889
    return-void
.end method

.method private static a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 1185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 1191
    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(ZLorg/xml/sax/Attributes;)Lfp$a;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1054
    new-instance v3, Lfp$a;

    invoke-direct {v3, v2}, Lfp$a;-><init>(B)V

    .line 1055
    const-string v0, "id"

    invoke-static {v0, p1}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lfp$a;->a:Ljava/lang/String;

    .line 1056
    iput-boolean p0, v3, Lfp$a;->c:Z

    .line 1057
    if-eqz p0, :cond_5

    .line 1058
    const-string v0, "x1"

    invoke-static {v0, p1, v5}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->d:F

    .line 1059
    const-string v0, "x2"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v4}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->f:F

    .line 1060
    const-string v0, "y1"

    invoke-static {v0, p1, v5}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->e:F

    .line 1061
    const-string v0, "y2"

    invoke-static {v0, p1, v5}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->g:F

    .line 1067
    :goto_0
    const-string v0, "gradientTransform"

    invoke-static {v0, p1}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    invoke-static {v0}, Lfp;->a(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v3, Lfp$a;->m:Landroid/graphics/Matrix;

    .line 1071
    :cond_0
    const-string v0, "spreadMethod"

    invoke-static {v0, p1}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    if-nez v0, :cond_1

    .line 1073
    const-string v0, "pad"

    .line 1076
    :cond_1
    const-string v4, "reflect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :goto_1
    iput-object v0, v3, Lfp$a;->p:Landroid/graphics/Shader$TileMode;

    .line 1080
    const-string v0, "gradientUnits"

    invoke-static {v0, p1}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    if-nez v0, :cond_2

    .line 1082
    const-string v0, "objectBoundingBox"

    .line 1084
    :cond_2
    const-string v4, "userSpaceOnUse"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lfp$a;->o:Z

    .line 1086
    const-string v0, "href"

    invoke-static {v0, p1}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_4

    .line 1088
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1089
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_3
    iput-object v0, v3, Lfp$a;->b:Ljava/lang/String;

    .line 1093
    :cond_4
    return-object v3

    .line 1063
    :cond_5
    const-string v0, "cx"

    invoke-static {v0, p1, v5}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->h:F

    .line 1064
    const-string v0, "cy"

    invoke-static {v0, p1, v5}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->i:F

    .line 1065
    const-string v0, "r"

    invoke-static {v0, p1, v5}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v0

    iput v0, v3, Lfp$a;->j:F

    goto :goto_0

    .line 1076
    :cond_6
    const-string v4, "repeat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_1

    :cond_7
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_1

    :cond_8
    move v0, v2

    .line 1084
    goto :goto_2
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lfp$e;->z:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1244
    iget-object v0, p0, Lfp$e;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1246
    :cond_0
    return-void
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 1202
    :cond_0
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1203
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 1205
    :cond_1
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 1206
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 1208
    :cond_2
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 1209
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1211
    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lfp$e;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 1217
    iget-object v1, p0, Lfp$e;->K:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1218
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1219
    :goto_0
    iget-object v1, p0, Lfp$e;->K:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iget-object v2, p0, Lfp$e;->K:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lfp$e;->a(FF)V

    .line 1220
    iget-object v1, p0, Lfp$e;->K:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lfp$e;->K:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lfp$e;->a(FF)V

    .line 1221
    return-void

    .line 1218
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lfp$d;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 1124
    const v0, 0xffffff

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v0, v1

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 1125
    iget-object v1, p0, Lfp$e;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfp$e;->u:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1126
    iget-object v0, p0, Lfp$e;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1128
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1129
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1130
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lfp$d;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 1131
    if-nez v0, :cond_1

    .line 1132
    if-eqz p3, :cond_3

    const-string v0, "fill-opacity"

    :goto_0
    invoke-virtual {p1, v0}, Lfp$d;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 1135
    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1136
    :goto_1
    invoke-direct {p0}, Lfp$e;->b()Lfp$b;

    move-result-object v1

    iget v1, v1, Lfp$b;->a:F

    mul-float/2addr v0, v1

    .line 1137
    iget-object v1, p0, Lfp$e;->w:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 1138
    iget-object v1, p0, Lfp$e;->w:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1140
    :cond_2
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1141
    return-void

    .line 1132
    :cond_3
    const-string v0, "stroke-opacity"

    goto :goto_0

    .line 1135
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    .line 1228
    const-string v0, "transform"

    invoke-static {v0, p1}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1230
    :goto_0
    iget-object v2, p0, Lfp$e;->z:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1231
    if-eqz v0, :cond_0

    .line 1232
    invoke-static {v1}, Lfp;->a(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1233
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1234
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1235
    iget-object v0, p0, Lfp$e;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1236
    iget-object v0, p0, Lfp$e;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1239
    :cond_0
    return-void

    .line 1229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lfp$d;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 991
    iget-boolean v0, p0, Lfp$e;->x:Z

    if-eqz v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v1

    .line 995
    :cond_1
    const-string v0, "none"

    const-string v2, "display"

    invoke-virtual {p1, v2}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    const-string v0, "stroke-width"

    invoke-virtual {p1, v0}, Lfp$d;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_2

    .line 1002
    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1005
    :cond_2
    const-string v0, "stroke-linecap"

    invoke-virtual {p1, v0}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    const-string v2, "round"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1007
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1014
    :cond_3
    :goto_1
    const-string v0, "stroke-linejoin"

    invoke-virtual {p1, v0}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    const-string v2, "miter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1016
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1023
    :cond_4
    :goto_2
    const-string v0, "stroke-dasharray"

    invoke-virtual {p1, v0}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stroke-dashoffset"

    invoke-virtual {p1, v2}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_5

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1025
    :cond_5
    :goto_3
    const-string v0, "stroke"

    invoke-virtual {p1, v0}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_11

    .line 1027
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1028
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1008
    :cond_6
    const-string v2, "square"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1009
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 1010
    :cond_7
    const-string v2, "butt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 1017
    :cond_8
    const-string v2, "round"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1018
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 1019
    :cond_9
    const-string v2, "bevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1020
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 1023
    :cond_a
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v2, " ,"

    invoke-direct {v8, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v6, :cond_b

    mul-int/lit8 v0, v0, 0x2

    :cond_b
    new-array v9, v0, [F

    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    move v4, v5

    move v0, v1

    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lfp$e;->a(Ljava/lang/String;F)F

    move-result v3

    aput v3, v9, v0

    add-float v0, v4, v3

    move v4, v0

    move v0, v2

    goto :goto_4

    :cond_c
    move v2, v1

    :goto_5
    array-length v3, v9

    if-ge v0, v3, :cond_d

    aget v3, v9, v2

    aput v3, v9, v0

    add-float/2addr v4, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    if-eqz v7, :cond_e

    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    rem-float v5, v0, v4

    :cond_e
    :goto_6
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    invoke-direct {v2, v9, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_3

    .line 1031
    :cond_f
    invoke-static {v0}, Lfp$d;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_10

    .line 1033
    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lfp$e;->a(Lfp$d;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    move v1, v6

    .line 1034
    goto/16 :goto_0

    .line 1036
    :cond_10
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 1042
    :cond_11
    iget-boolean v0, p0, Lfp$e;->d:Z

    if-eqz v0, :cond_12

    .line 1044
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v6

    goto/16 :goto_0

    .line 1047
    :cond_12
    iget-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_6
.end method

.method private a(Lfp$d;Landroid/graphics/RectF;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/high16 v5, -0x1000000

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 922
    const-string v2, "none"

    const-string v4, "display"

    invoke-virtual {p1, v4}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    iget-boolean v2, p0, Lfp$e;->x:Z

    if-eqz v2, :cond_2

    .line 926
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 927
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 928
    goto :goto_0

    .line 930
    :cond_2
    const-string v2, "fill"

    invoke-virtual {p1, v2}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    if-nez v2, :cond_3

    iget-object v4, p0, Lfp$e;->L:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 932
    iget-object v2, p0, Lfp$e;->L:Ljava/lang/String;

    .line 934
    :cond_3
    if-eqz v2, :cond_9

    .line 935
    const-string v4, "url(#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 938
    const/4 v0, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 939
    iget-object v2, p0, Lfp$e;->B:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfp$a;

    .line 941
    if-eqz v0, :cond_b

    .line 942
    iget-object v2, v0, Lfp$a;->n:Landroid/graphics/Shader;

    .line 944
    :goto_1
    if-eqz v2, :cond_5

    .line 946
    iget-object v3, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 947
    iget-object v3, p0, Lfp$e;->G:Landroid/graphics/Matrix;

    iget-object v4, v0, Lfp$a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 948
    iget-boolean v0, v0, Lfp$a;->o:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 950
    iget-object v0, p0, Lfp$e;->G:Landroid/graphics/Matrix;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 951
    iget-object v0, p0, Lfp$e;->G:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 953
    :cond_4
    iget-object v0, p0, Lfp$e;->G:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move v0, v1

    .line 954
    goto :goto_0

    .line 956
    :cond_5
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 958
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lfp$e;->a(Lfp$d;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    move v0, v1

    .line 959
    goto/16 :goto_0

    .line 961
    :cond_6
    const-string v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 962
    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 963
    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 964
    goto/16 :goto_0

    .line 966
    :cond_7
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 967
    invoke-static {v2}, Lfp$d;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_8

    .line 969
    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lfp$e;->a(Lfp$d;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    move v0, v1

    .line 970
    goto/16 :goto_0

    .line 972
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lfp$e;->a(Lfp$d;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    move v0, v1

    .line 974
    goto/16 :goto_0

    .line 978
    :cond_9
    iget-boolean v2, p0, Lfp$e;->h:Z

    if-eqz v2, :cond_a

    .line 980
    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 983
    :cond_a
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 984
    iget-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 985
    goto/16 :goto_0

    :cond_b
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private b()Lfp$b;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lfp$e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfp$b;

    return-object v0
.end method


# virtual methods
.method public final characters([CII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1530
    iget-boolean v0, p0, Lfp$e;->l:Z

    if-eqz v0, :cond_0

    .line 1531
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    aget-char v0, p1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1532
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1533
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1535
    iget v0, p0, Lfp$e;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfp$e;->o:I

    .line 1536
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget v1, p0, Lfp$e;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Lfp$e;->p:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1539
    iget-object v1, p0, Lfp$e;->m:Ljava/lang/Float;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfp$e;->n:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 1540
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->m:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lfp$e;->n:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lfp$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1545
    :goto_1
    iget-object v1, p0, Lfp$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1547
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1542
    :cond_2
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->q:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1543
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final endDocument()V
    .locals 0

    .prologue
    .line 917
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 1554
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1555
    iget-object v0, p0, Lfp$e;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v1, p0, Lfp$e;->y:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1558
    :cond_0
    iget-object v0, p0, Lfp$e;->E:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 1559
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lfp$e;->E:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1560
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lfp$e;->E:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1562
    :cond_1
    iget-object v0, p0, Lfp$e;->F:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1563
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lfp$e;->F:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1564
    iget-object v0, p0, Lfp$e;->t:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lfp$e;->F:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1566
    :cond_2
    iget-object v0, p0, Lfp$e;->a:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 1602
    :cond_3
    :goto_0
    return-void

    .line 1568
    :cond_4
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1569
    :cond_5
    iget-object v0, p0, Lfp$e;->C:Lfp$a;

    iget-object v0, v0, Lfp$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1570
    iget-object v0, p0, Lfp$e;->B:Ljava/util/HashMap;

    iget-object v1, p0, Lfp$e;->C:Lfp$a;

    iget-object v1, v1, Lfp$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lfp$e;->C:Lfp$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1572
    :cond_6
    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1573
    iget-object v0, p0, Lfp$e;->B:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lfp$a;

    iget-object v0, v8, Lfp$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfp$e;->B:Ljava/util/HashMap;

    iget-object v1, v8, Lfp$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfp$a;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lfp$a;->a:Ljava/lang/String;

    iput-object v1, v8, Lfp$a;->b:Ljava/lang/String;

    iget-object v1, v0, Lfp$a;->k:Ljava/util/ArrayList;

    iput-object v1, v8, Lfp$a;->k:Ljava/util/ArrayList;

    iget-object v1, v0, Lfp$a;->l:Ljava/util/ArrayList;

    iput-object v1, v8, Lfp$a;->l:Ljava/util/ArrayList;

    iget-object v1, v8, Lfp$a;->m:Landroid/graphics/Matrix;

    if-nez v1, :cond_8

    iget-object v0, v0, Lfp$a;->m:Landroid/graphics/Matrix;

    iput-object v0, v8, Lfp$a;->m:Landroid/graphics/Matrix;

    :cond_7
    :goto_2
    iget-object v0, v8, Lfp$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v9

    :goto_3
    array-length v0, v5

    if-ge v1, v0, :cond_9

    iget-object v0, v8, Lfp$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lfp$a;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_7

    new-instance v1, Landroid/graphics/Matrix;

    iget-object v0, v0, Lfp$a;->m:Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v0, v8, Lfp$a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iput-object v1, v8, Lfp$a;->m:Landroid/graphics/Matrix;

    goto :goto_2

    :cond_9
    iget-object v0, v8, Lfp$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [F

    move v1, v9

    :goto_4
    array-length v0, v6

    if-ge v1, v0, :cond_a

    iget-object v0, v8, Lfp$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_a
    array-length v0, v5

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BAD gradient, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lfp$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v0, v8, Lfp$a;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Lfp$a;->d:F

    iget v2, v8, Lfp$a;->e:F

    iget v3, v8, Lfp$a;->f:F

    iget v4, v8, Lfp$a;->g:F

    iget-object v7, v8, Lfp$a;->p:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, v8, Lfp$a;->n:Landroid/graphics/Shader;

    goto/16 :goto_1

    :cond_c
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v8, Lfp$a;->h:F

    iget v3, v8, Lfp$a;->i:F

    iget v4, v8, Lfp$a;->j:F

    iget-object v7, v8, Lfp$a;->p:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v8, Lfp$a;->n:Landroid/graphics/Shader;

    goto/16 :goto_1

    .line 1574
    :cond_d
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1575
    iget-boolean v0, p0, Lfp$e;->J:Z

    if-eqz v0, :cond_e

    .line 1576
    iput-boolean v9, p0, Lfp$e;->J:Z

    .line 1579
    :cond_e
    iget-boolean v0, p0, Lfp$e;->H:Z

    if-eqz v0, :cond_f

    .line 1580
    iget v0, p0, Lfp$e;->I:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfp$e;->I:I

    .line 1582
    iget v0, p0, Lfp$e;->I:I

    if-nez v0, :cond_f

    .line 1583
    iput-boolean v9, p0, Lfp$e;->H:Z

    .line 1588
    :cond_f
    invoke-direct {p0}, Lfp$e;->a()V

    .line 1589
    iget-object v0, p0, Lfp$e;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lfp$e;->g:Landroid/graphics/Paint;

    .line 1590
    iget-object v0, p0, Lfp$e;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lfp$e;->h:Z

    .line 1591
    iget-object v0, p0, Lfp$e;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lfp$e;->c:Landroid/graphics/Paint;

    .line 1592
    iget-object v0, p0, Lfp$e;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lfp$e;->d:Z

    .line 1593
    iget-object v0, p0, Lfp$e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1594
    iget-object v0, p0, Lfp$e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1596
    :cond_10
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    iget-boolean v0, p0, Lfp$e;->l:Z

    if-eqz v0, :cond_3

    .line 1598
    iput-boolean v9, p0, Lfp$e;->l:Z

    .line 1599
    iget-object v0, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public final startDocument()V
    .locals 0

    .prologue
    .line 912
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 14

    .prologue
    .line 1254
    iget-object v1, p0, Lfp$e;->c:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1255
    iget-object v1, p0, Lfp$e;->g:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1256
    iget-object v1, p0, Lfp$e;->k:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1258
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfp$e;->l:Z

    .line 1261
    iget-boolean v1, p0, Lfp$e;->J:Z

    if-eqz v1, :cond_3

    .line 1262
    const-string v1, "rect"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1263
    const-string v1, "x"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1264
    if-nez v1, :cond_0

    .line 1265
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1267
    :cond_0
    const-string v2, "y"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1268
    if-nez v2, :cond_1

    .line 1269
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1271
    :cond_1
    const-string v3, "width"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1272
    const-string v4, "height"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1273
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {v5, v6, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lfp$e;->s:Landroid/graphics/RectF;

    .line 1520
    :cond_2
    :goto_0
    return-void

    .line 1277
    :cond_3
    const-string v1, "svg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1278
    const/4 v1, 0x0

    iput-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    .line 1279
    const-string v1, "fill"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfp$e;->L:Ljava/lang/String;

    .line 1280
    const-string v1, "viewBox"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    if-eqz v1, :cond_4

    .line 1282
    const/16 v2, 0x2c

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1283
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1284
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lfp;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 1285
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lfp;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 1286
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Lfp;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    .line 1287
    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-static {v1}, Lfp;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 1288
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 1289
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1290
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1292
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    .line 1293
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 1294
    iget-object v5, p0, Lfp$e;->a:Landroid/graphics/Picture;

    float-to-int v6, v4

    float-to-int v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v5

    iput-object v5, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    .line 1295
    iget-object v5, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lfp$e;->y:Ljava/lang/Integer;

    .line 1296
    iget-object v5, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1297
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lfp$e;->E:Ljava/lang/Float;

    .line 1298
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lfp$e;->F:Ljava/lang/Float;

    .line 1299
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->E:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lfp$e;->F:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1304
    :cond_4
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    if-nez v1, :cond_2

    .line 1305
    const-string v1, "width"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    .line 1306
    const-string v2, "height"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    .line 1307
    iget-object v3, p0, Lfp$e;->a:Landroid/graphics/Picture;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lfp$e;->y:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1311
    :cond_5
    const-string v1, "defs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1313
    const-string v1, "linearGradient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1314
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp$e;->a(ZLorg/xml/sax/Attributes;)Lfp$a;

    move-result-object v1

    iput-object v1, p0, Lfp$e;->C:Lfp$a;

    goto/16 :goto_0

    .line 1315
    :cond_6
    const-string v1, "radialGradient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1316
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp$e;->a(ZLorg/xml/sax/Attributes;)Lfp$a;

    move-result-object v1

    iput-object v1, p0, Lfp$e;->C:Lfp$a;

    goto/16 :goto_0

    .line 1317
    :cond_7
    const-string v1, "stop"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1318
    iget-object v1, p0, Lfp$e;->C:Lfp$a;

    if-eqz v1, :cond_2

    .line 1319
    new-instance v2, Lfp$d;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1322
    const-string v1, "stop-color"

    invoke-virtual {v2, v1}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfp$d;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1323
    if-nez v1, :cond_8

    .line 1324
    const/4 v1, 0x0

    .line 1330
    :goto_1
    iget-object v3, p0, Lfp$e;->C:Lfp$a;

    iget-object v3, v3, Lfp$a;->l:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    const-string v1, "offset"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lfp$d;->a(Ljava/lang/String;F)F

    move-result v1

    .line 1333
    iget-object v2, p0, Lfp$e;->C:Lfp$a;

    iget-object v2, v2, Lfp$a;->k:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1326
    :cond_8
    const-string v3, "stop-opacity"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lfp$d;->a(Ljava/lang/String;F)F

    move-result v3

    invoke-direct {p0}, Lfp$e;->b()Lfp$b;

    move-result-object v4

    iget v4, v4, Lfp$b;->a:F

    mul-float/2addr v3, v4

    .line 1327
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    goto :goto_1

    .line 1335
    :cond_9
    const-string v1, "g"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1336
    new-instance v2, Lfp$d;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1339
    const-string v1, "bounds"

    const-string v3, "id"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfp$e;->J:Z

    .line 1342
    :cond_a
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-eqz v1, :cond_b

    .line 1343
    iget v1, p0, Lfp$e;->I:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfp$e;->I:I

    .line 1347
    :cond_b
    const-string v1, "none"

    const-string v3, "display"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "none"

    const-string v3, "display"

    invoke-virtual {v2, v3}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1348
    :cond_c
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_d

    .line 1349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfp$e;->H:Z

    .line 1350
    const/4 v1, 0x1

    iput v1, p0, Lfp$e;->I:I

    .line 1356
    :cond_d
    const-string v1, "opacity"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Lfp$d;->a(Ljava/lang/String;F)F

    move-result v1

    .line 1357
    invoke-direct {p0}, Lfp$e;->b()Lfp$b;

    move-result-object v3

    .line 1358
    new-instance v4, Lfp$b;

    iget v3, v3, Lfp$b;->a:F

    mul-float/2addr v1, v3

    invoke-direct {v4, v1}, Lfp$b;-><init>(F)V

    .line 1359
    iget-object v1, p0, Lfp$e;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1361
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1362
    iget-object v1, p0, Lfp$e;->i:Ljava/util/LinkedList;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1363
    iget-object v1, p0, Lfp$e;->e:Ljava/util/LinkedList;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1364
    iget-object v1, p0, Lfp$e;->j:Ljava/util/LinkedList;

    iget-boolean v3, p0, Lfp$e;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1365
    iget-object v1, p0, Lfp$e;->f:Ljava/util/LinkedList;

    iget-boolean v3, p0, Lfp$e;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1367
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lfp$e;->a(Lfp$d;Landroid/graphics/RectF;)Z

    .line 1368
    invoke-direct {p0, v2}, Lfp$e;->a(Lfp$d;)Z

    .line 1370
    iget-boolean v3, p0, Lfp$e;->h:Z

    const-string v1, "fill"

    invoke-virtual {v2, v1}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_2
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lfp$e;->h:Z

    .line 1371
    iget-boolean v3, p0, Lfp$e;->d:Z

    const-string v1, "stroke"

    invoke-virtual {v2, v1}, Lfp$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lfp$e;->d:Z

    goto/16 :goto_0

    .line 1370
    :cond_e
    const/4 v1, 0x0

    goto :goto_2

    .line 1371
    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    .line 1373
    :cond_10
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_17

    const-string v1, "rect"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1374
    const-string v1, "x"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1375
    if-nez v1, :cond_11

    .line 1376
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1378
    :cond_11
    const-string v2, "y"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1379
    if-nez v2, :cond_12

    .line 1380
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1382
    :cond_12
    const-string v3, "width"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1383
    const-string v4, "height"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1384
    const-string v5, "rx"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v0, v6}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1385
    const-string v6, "ry"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v6, v0, v7}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1386
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1387
    new-instance v7, Lfp$d;

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-direct {v7, v0, v8}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1388
    iget-object v8, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1389
    iget-object v8, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-direct {p0, v7, v8}, Lfp$e;->a(Lfp$d;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1390
    iget-object v8, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1391
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_15

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_15

    .line 1392
    iget-object v8, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v9, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v10, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1396
    :goto_4
    iget-object v8, p0, Lfp$e;->r:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1398
    :cond_13
    invoke-direct {p0, v7}, Lfp$e;->a(Lfp$d;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1399
    iget-object v7, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v8, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1400
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_16

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_16

    .line 1401
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v3, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1405
    :goto_5
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1407
    :cond_14
    invoke-direct {p0}, Lfp$e;->a()V

    goto/16 :goto_0

    .line 1394
    :cond_15
    iget-object v8, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v9, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1403
    :cond_16
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1408
    :cond_17
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_18

    const-string v1, "line"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1409
    const-string v1, "x1"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1410
    const-string v1, "x2"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1411
    const-string v1, "y1"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1412
    const-string v1, "y2"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1413
    new-instance v1, Lfp$d;

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v6}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1414
    invoke-direct {p0, v1}, Lfp$e;->a(Lfp$d;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1415
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1416
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1417
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1418
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1419
    invoke-direct {p0}, Lfp$e;->a()V

    goto/16 :goto_0

    .line 1421
    :cond_18
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_1b

    const-string v1, "text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1422
    const-string v1, "x"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1423
    const-string v2, "y"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1424
    const-string v3, "font-size"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1425
    const-string v4, "transform"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfp;->a(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v4

    .line 1427
    const/4 v5, 0x1

    iput-boolean v5, p0, Lfp$e;->l:Z

    .line 1428
    if-eqz v3, :cond_2

    .line 1429
    iput-object v3, p0, Lfp$e;->p:Ljava/lang/Float;

    .line 1430
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1431
    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    .line 1432
    iput-object v1, p0, Lfp$e;->m:Ljava/lang/Float;

    .line 1433
    iput-object v2, p0, Lfp$e;->n:Ljava/lang/Float;

    .line 1437
    :goto_6
    new-instance v1, Lfp$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v2}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1438
    const-string v2, "fill"

    invoke-static {v2}, Lfp$d;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1439
    if-eqz v2, :cond_1a

    .line 1440
    const/4 v3, 0x1

    iget-object v4, p0, Lfp$e;->k:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2, v3, v4}, Lfp$e;->a(Lfp$d;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    .line 1444
    :goto_7
    const/4 v1, 0x0

    iput v1, p0, Lfp$e;->o:I

    .line 1445
    iget-object v1, p0, Lfp$e;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lfp$e;->p:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1446
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1447
    invoke-direct {p0}, Lfp$e;->a()V

    goto/16 :goto_0

    .line 1434
    :cond_19
    iput-object v4, p0, Lfp$e;->q:Landroid/graphics/Matrix;

    goto :goto_6

    .line 1442
    :cond_1a
    iget-object v1, p0, Lfp$e;->k:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 1449
    :cond_1b
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_20

    const-string v1, "circle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "ellipse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1452
    :cond_1c
    const-string v1, "cx"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1453
    const-string v1, "cy"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1454
    const-string v1, "ellipse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1455
    const-string v1, "rx"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1456
    const-string v1, "ry"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1461
    :goto_8
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1462
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1463
    new-instance v5, Lfp$d;

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-direct {v5, v0, v6}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1464
    iget-object v6, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v6, v7, v8, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1465
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-direct {p0, v5, v1}, Lfp$e;->a(Lfp$d;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1466
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v3, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1467
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1469
    :cond_1d
    invoke-direct {p0, v5}, Lfp$e;->a(Lfp$d;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1470
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v3, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1471
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1473
    :cond_1e
    invoke-direct {p0}, Lfp$e;->a()V

    goto/16 :goto_0

    .line 1459
    :cond_1f
    const-string v1, "r"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    move-object v2, v1

    goto :goto_8

    .line 1475
    :cond_20
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_26

    const-string v1, "polygon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "polyline"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1476
    :cond_21
    const-string v1, "points"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lfp$c;

    move-result-object v1

    .line 1477
    if-eqz v1, :cond_2

    .line 1478
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1479
    iget-object v4, v1, Lfp$c;->a:Ljava/util/ArrayList;

    .line 1480
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1481
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1482
    new-instance v5, Lfp$d;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v5, v0, v1}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1483
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1484
    const/4 v1, 0x2

    move v2, v1

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_22

    .line 1485
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1486
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1487
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1484
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_9

    .line 1490
    :cond_22
    const-string v1, "polygon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1491
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1493
    :cond_23
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1494
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-direct {p0, v5, v1}, Lfp$e;->a(Lfp$d;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1495
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1496
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1498
    :cond_24
    invoke-direct {p0, v5}, Lfp$e;->a(Lfp$d;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1499
    iget-object v1, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1500
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1502
    :cond_25
    invoke-direct {p0}, Lfp$e;->a()V

    goto/16 :goto_0

    .line 1505
    :cond_26
    iget-boolean v1, p0, Lfp$e;->H:Z

    if-nez v1, :cond_2

    const-string v1, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1506
    const-string v1, "d"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lfp;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfp;->c(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 1507
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lfp$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1508
    new-instance v2, Lfp$d;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v3}, Lfp$d;-><init>(Lorg/xml/sax/Attributes;B)V

    .line 1509
    iget-object v3, p0, Lfp$e;->r:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1510
    iget-object v3, p0, Lfp$e;->r:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v3}, Lfp$e;->a(Lfp$d;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1511
    iget-object v3, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v4, p0, Lfp$e;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1512
    iget-object v3, p0, Lfp$e;->r:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1514
    :cond_27
    invoke-direct {p0, v2}, Lfp$e;->a(Lfp$d;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1515
    iget-object v2, p0, Lfp$e;->D:Landroid/graphics/Canvas;

    iget-object v3, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1516
    iget-object v1, p0, Lfp$e;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lfp$e;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Lfp$e;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1518
    :cond_28
    invoke-direct {p0}, Lfp$e;->a()V

    goto/16 :goto_0
.end method
