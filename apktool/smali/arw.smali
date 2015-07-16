.class public final Larw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field public final b:Lapz;

.field public final c:Lcom/squareup/otto/Bus;

.field public d:Landroid/view/View;

.field e:Z

.field final f:Landroid/view/View$OnTouchListener;

.field private final g:Laip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapz;)V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Larw;-><init>(Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapz;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapz;)V
    .locals 6

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_TEMPERATURE_SCALE_IMPERIAL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lauv;->a()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Laip;->a()Laip;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Larw;-><init>(Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapz;ZLaip;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Landroid/content/SharedPreferences;Lapz;ZLaip;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Larw$1;

    invoke-direct {v0, p0}, Larw$1;-><init>(Larw;)V

    iput-object v0, p0, Larw;->f:Landroid/view/View$OnTouchListener;

    .line 46
    iput-object p1, p0, Larw;->c:Lcom/squareup/otto/Bus;

    .line 47
    iput-object p3, p0, Larw;->b:Lapz;

    .line 48
    iput-object p2, p0, Larw;->a:Landroid/content/SharedPreferences;

    .line 49
    iput-boolean p4, p0, Larw;->e:Z

    .line 50
    iput-object p5, p0, Larw;->g:Laip;

    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Larw;->b:Lapz;

    const v1, 0x7f0400cf

    invoke-virtual {v0, v1}, Lapz;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Larw;->d:Landroid/view/View;

    .line 58
    iget-object v0, p0, Larw;->d:Landroid/view/View;

    iget-object v1, p0, Larw;->f:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v0, p0, Larw;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Larw;->b()V

    .line 61
    return-void
.end method

.method final b()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Larw;->d:Landroid/view/View;

    const v1, 0x7f0a041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Larw;->d:Landroid/view/View;

    const v2, 0x7f0a041b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Larw;->g:Laip;

    invoke-virtual {v2}, Laip;->b()Lakv;

    move-result-object v2

    .line 109
    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "Weather not loaded"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 128
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-boolean v3, p0, Larw;->e:Z

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, v2, Lakv;->mTempF:Ljava/lang/String;

    .line 118
    const v2, 0x7f0c00ee

    .line 123
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v3, v2, Lakv;->mTempC:Ljava/lang/String;

    .line 121
    const v2, 0x7f0c00ed

    goto :goto_1
.end method

.method public final onWeatherUpdatedEvent(Lbfu;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Larw;->b()V

    .line 94
    return-void
.end method
