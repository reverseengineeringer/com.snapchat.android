.class public final Laqw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:F


# instance fields
.field public final a:Lapd;

.field public final b:Lcom/squareup/otto/Bus;

.field public c:Landroid/view/View;

.field public final d:Landroid/view/View$OnTouchListener;

.field private final f:Landroid/content/SharedPreferences;

.field private final g:Landroid/content/Context;

.field private h:Z

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x461c3f9a    # 9999.9f

    sput v0, Laqw;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lapd;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Laqw;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapd;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapd;)V
    .locals 6

    .prologue
    .line 47
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SPEED_USE_MPH:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Latx;

    invoke-direct {v1}, Latx;-><init>()V

    invoke-static {}, Latx;->a()Z

    move-result v1

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Laqw;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapd;Z)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapd;Z)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Laqw$1;

    invoke-direct {v0, p0}, Laqw$1;-><init>(Laqw;)V

    iput-object v0, p0, Laqw;->d:Landroid/view/View$OnTouchListener;

    .line 53
    iput-object p1, p0, Laqw;->g:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Laqw;->b:Lcom/squareup/otto/Bus;

    .line 55
    iput-object p4, p0, Laqw;->a:Lapd;

    .line 56
    iput-object p3, p0, Laqw;->f:Landroid/content/SharedPreferences;

    .line 57
    iput-boolean p5, p0, Laqw;->h:Z

    .line 58
    return-void
.end method

.method private static a(I)I
    .locals 3

    .prologue
    .line 207
    rem-int/lit8 v0, p0, 0xa

    packed-switch v0, :pswitch_data_0

    .line 229
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    const v0, 0x7f02025e

    .line 227
    :goto_0
    return v0

    .line 211
    :pswitch_1
    const v0, 0x7f02025f

    goto :goto_0

    .line 213
    :pswitch_2
    const v0, 0x7f020260

    goto :goto_0

    .line 215
    :pswitch_3
    const v0, 0x7f020261

    goto :goto_0

    .line 217
    :pswitch_4
    const v0, 0x7f020262

    goto :goto_0

    .line 219
    :pswitch_5
    const v0, 0x7f020263

    goto :goto_0

    .line 221
    :pswitch_6
    const v0, 0x7f020264

    goto :goto_0

    .line 223
    :pswitch_7
    const v0, 0x7f020265

    goto :goto_0

    .line 225
    :pswitch_8
    const v0, 0x7f020266

    goto :goto_0

    .line 227
    :pswitch_9
    const v0, 0x7f020267

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Laqw;F)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Laqw;->a(F)V

    return-void
.end method

.method static synthetic a(Laqw;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Laqw;->h:Z

    return v0
.end method

.method static synthetic a(Laqw;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Laqw;->h:Z

    return p1
.end method

.method static synthetic b(Laqw;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laqw;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Laqw;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Laqw;->i:F

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 10

    .prologue
    const/high16 v9, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 133
    iget-boolean v0, p0, Laqw;->h:Z

    if-eqz v0, :cond_2

    .line 134
    float-to-double v0, p1

    const-wide v4, 0x4001e5604189374cL    # 2.237

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 139
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    cmpg-float v1, v0, v3

    if-ltz v1, :cond_0

    sget v1, Laqw;->e:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    .line 140
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "SpeedometerView: Invalid speed"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "speed"

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    move v2, v3

    .line 145
    :goto_1
    iget-object v0, p0, Laqw;->c:Landroid/view/View;

    const v1, 0x7f0a03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Laqw;->c:Landroid/view/View;

    const v4, 0x7f0a03b5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 147
    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v4, v2, v4

    float-to-int v4, v4

    .line 148
    if-nez v4, :cond_3

    .line 149
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    :goto_2
    iget-object v0, p0, Laqw;->c:Landroid/view/View;

    const v1, 0x7f0a03b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v2, v1

    float-to-int v1, v1

    rem-int/lit8 v5, v1, 0xa

    .line 160
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 161
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :goto_3
    iget-object v0, p0, Laqw;->c:Landroid/view/View;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 169
    div-float v1, v2, v9

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0xa

    .line 170
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    .line 171
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :goto_4
    iget-object v0, p0, Laqw;->c:Landroid/view/View;

    const v1, 0x7f0a03b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 179
    float-to-int v1, v2

    rem-int/lit8 v1, v1, 0xa

    .line 180
    invoke-static {v1}, Laqw;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Laqw;->c:Landroid/view/View;

    const v1, 0x7f0a03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    iget-object v1, p0, Laqw;->c:Landroid/view/View;

    const v6, 0x7f0a03b9

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 185
    mul-float v6, v2, v9

    float-to-int v6, v6

    rem-int/lit8 v6, v6, 0xa

    .line 186
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 189
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :goto_5
    iget-object v0, p0, Laqw;->c:Landroid/view/View;

    const v1, 0x7f0a03bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 199
    iget-boolean v1, p0, Laqw;->h:Z

    if-eqz v1, :cond_7

    .line 200
    const v1, 0x7f02026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    :goto_6
    return-void

    .line 136
    :cond_2
    float-to-double v0, p1

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v4

    double-to-float v0, v0

    goto/16 :goto_0

    .line 152
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    invoke-static {v4}, Laqw;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 163
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-static {v5}, Laqw;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 173
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-static {v1}, Laqw;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 192
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    invoke-static {v6}, Laqw;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 202
    :cond_7
    const v1, 0x7f020269

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_8
    move v2, v0

    goto/16 :goto_1
.end method

.method public final onSpeedUpdatedEvent(Lbdu;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 117
    iget v0, p1, Lbdu;->mSpeed:F

    iput v0, p0, Laqw;->i:F

    .line 118
    iget v0, p0, Laqw;->i:F

    invoke-virtual {p0, v0}, Laqw;->a(F)V

    .line 119
    return-void
.end method
