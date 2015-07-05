.class public final Lars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg$a;


# instance fields
.field protected final a:Lask;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/snapchat/android/ui/SwipeImageView;

.field private final d:Laht;

.field private final e:Lahq;

.field private final f:Lwy;

.field private final g:Lapd;

.field private final h:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;

.field private i:Lcom/snapchat/android/model/Mediabryo$SnapType;

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Laht;Lahq;Lask;Lwy;Lapd;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lars;->b:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    .line 97
    iput-object p3, p0, Lars;->d:Laht;

    .line 98
    iput-object p4, p0, Lars;->e:Lahq;

    .line 99
    iget-object v0, p0, Lars;->d:Laht;

    invoke-virtual {v0}, Laht;->b()Laka;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lars;->j:Z

    .line 100
    iput-object p5, p0, Lars;->a:Lask;

    .line 101
    iput-object p6, p0, Lars;->f:Lwy;

    .line 102
    iput-object p7, p0, Lars;->g:Lapd;

    .line 103
    new-instance v0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;

    iget-object v1, p0, Lars;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lars;->h:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;

    .line 104
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Larw;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Larw",
            "<",
            "Larn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Laht;->a()Laht;

    move-result-object v3

    new-instance v4, Lahq;

    invoke-direct {v4}, Lahq;-><init>()V

    new-instance v5, Lask;

    invoke-direct {v5, p2, p3}, Lask;-><init>(Lcom/snapchat/android/ui/SwipeImageView;Larw;)V

    invoke-static {}, Lwy;->a()Lwy;

    move-result-object v6

    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lars;-><init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Laht;Lahq;Lask;Lwy;Lapd;)V

    .line 85
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lars;->a:Lask;

    new-instance v1, Lasi;

    invoke-direct {v1}, Lasi;-><init>()V

    iget-object v2, v0, Lask;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v0, v0, Lask;->c:Larw;

    invoke-virtual {v1, v2, v0}, Lasj;->a(Lcom/snapchat/android/ui/SwipeImageView;Larw;)V

    .line 184
    iget-object v0, p0, Lars;->a:Lask;

    iget-object v0, v0, Lask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    return-void
.end method

.method public final a(IZZLcom/snapchat/android/model/Mediabryo$SnapType;)V
    .locals 10
    .param p4    # Lcom/snapchat/android/model/Mediabryo$SnapType;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/16 v2, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 196
    invoke-static {}, Lbgp;->a()V

    .line 198
    invoke-virtual {p0}, Lars;->a()V

    .line 200
    invoke-static {p4}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v0, p0, Lars;->i:Lcom/snapchat/android/model/Mediabryo$SnapType;

    .line 201
    new-instance v0, Lasf;

    invoke-direct {v0}, Lasf;-><init>()V

    .line 202
    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    .line 205
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lase;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    iget-object v2, p0, Lars;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lase;-><init>(Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;)V

    .line 208
    iget-object v1, p0, Lars;->a:Lask;

    new-instance v2, Lash;

    new-instance v3, Lary;

    invoke-direct {v3}, Lary;-><init>()V

    invoke-direct {v2, v0, v3}, Lash;-><init>(Larn;Laru;)V

    invoke-virtual {v1, v2}, Lask;->a(Lasj;)V

    .line 211
    iget-boolean v0, p0, Lars;->k:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lars;->a:Lask;

    invoke-virtual {v0}, Lask;->a()V

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 237
    return-void

    .line 215
    :cond_1
    if-eqz p2, :cond_2

    .line 216
    if-nez p1, :cond_9

    .line 217
    invoke-static {}, Lbgp;->a()V

    new-instance v0, Larp;

    const-string v1, "Instasnap"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Larp;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    new-instance v0, Larp;

    const-string v1, "Miss Etikate"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3}, Larp;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    new-instance v0, Larp;

    const-string v1, "Greyscale"

    invoke-direct {v0, v1, v6}, Larp;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    .line 223
    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    .line 224
    invoke-static {}, Lbgp;->a()V

    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Laqw;

    iget-object v1, p0, Lars;->b:Landroid/content/Context;

    iget-object v3, p0, Lars;->g:Lapd;

    invoke-direct {v0, v1, v3}, Laqw;-><init>(Landroid/content/Context;Lapd;)V

    iget-object v1, v0, Laqw;->a:Lapd;

    const v3, 0x7f0400ac

    invoke-virtual {v1, v3}, Lapd;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Laqw;->c:Landroid/view/View;

    iget-object v1, v0, Laqw;->c:Landroid/view/View;

    iget-object v3, v0, Laqw;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Laqw;->b:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laqw;->a(F)V

    new-instance v1, Lasd;

    invoke-direct {v1, v0}, Lasd;-><init>(Laqw;)V

    iget-object v0, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    new-instance v4, Lary;

    invoke-direct {v4}, Lary;-><init>()V

    invoke-direct {v3, v1, v4}, Lash;-><init>(Larn;Laru;)V

    invoke-virtual {v0, v3}, Lask;->a(Lasj;)V

    :cond_3
    iget-object v0, p0, Lars;->d:Laht;

    invoke-virtual {v0}, Laht;->b()Laka;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Laqx;

    iget-object v1, p0, Lars;->b:Landroid/content/Context;

    iget-object v3, p0, Lars;->g:Lapd;

    invoke-direct {v0, v1, v3}, Laqx;-><init>(Landroid/content/Context;Lapd;)V

    invoke-virtual {v0}, Laqx;->a()V

    new-instance v1, Lasg;

    invoke-direct {v1, v0}, Lasg;-><init>(Laqx;)V

    iget-object v0, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    new-instance v4, Lary;

    invoke-direct {v4}, Lary;-><init>()V

    invoke-direct {v3, v1, v4}, Lash;-><init>(Larn;Laru;)V

    invoke-virtual {v0, v3}, Lask;->a(Lasj;)V

    :cond_4
    new-instance v3, Laqv;

    iget-object v0, p0, Lars;->g:Lapd;

    invoke-direct {v3, v0}, Laqv;-><init>(Lapd;)V

    iget-object v0, p0, Lars;->b:Landroid/content/Context;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v4, v3, Laqv;->a:Lapd;

    const v5, 0x7f040039

    invoke-virtual {v4, v5}, Lapd;->a(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Laqv;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v3, Laqv;->c:Z

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, v3, Laqv;->b:Landroid/view/View;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, v3, Laqv;->c:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-boolean v1, v3, Laqv;->c:Z

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v1, :cond_6

    if-le v0, v2, :cond_5

    add-int/lit8 v0, v0, -0xc

    :cond_5
    if-nez v0, :cond_6

    move v0, v2

    :cond_6
    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    div-int/lit8 v2, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    new-instance v5, Laqv$a;

    invoke-direct {v5, v1, v0, v2, v4}, Laqv$a;-><init>(IIII)V

    iget-object v0, v3, Laqv;->b:Landroid/view/View;

    const v1, 0x7f0a015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, v5, Laqv$a;->a:I

    if-nez v1, :cond_c

    iget-boolean v1, v3, Laqv;->c:Z

    if-nez v1, :cond_c

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v0, v3, Laqv;->b:Landroid/view/View;

    const v1, 0x7f0a015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, v5, Laqv$a;->b:I

    invoke-static {v1, v6}, Laqv;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v3, Laqv;->b:Landroid/view/View;

    const v1, 0x7f0a0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, v5, Laqv$a;->c:I

    invoke-static {v1, v6}, Laqv;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v3, Laqv;->b:Landroid/view/View;

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, v5, Laqv$a;->d:I

    invoke-static {v1, v6}, Laqv;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lasa;

    invoke-direct {v0, v3}, Lasa;-><init>(Laqv;)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v2, Lash;

    new-instance v3, Lary;

    invoke-direct {v3}, Lary;-><init>()V

    invoke-direct {v2, v0, v3}, Lash;-><init>(Larn;Laru;)V

    invoke-virtual {v1, v2}, Lask;->a(Lasj;)V

    iget-object v0, p0, Lars;->h:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a()Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->NO_BATTERY_FILTER:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    if-eq v0, v1, :cond_7

    new-instance v2, Laqu;

    iget-object v0, p0, Lars;->g:Lapd;

    invoke-direct {v2, v0}, Laqu;-><init>(Lapd;)V

    iget-object v0, p0, Lars;->h:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a()Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    move-result-object v1

    iget-object v0, v2, Laqu;->b:Lapd;

    const v3, 0x7f040009

    invoke-virtual {v0, v3}, Lapd;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Laqu;->a:Landroid/view/View;

    iget-object v0, v2, Laqu;->a:Landroid/view/View;

    const v3, 0x7f0a0076

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Laqu$1;->a:[I

    invoke-virtual {v1}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f02008e

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Larz;

    invoke-direct {v0, v2}, Larz;-><init>(Laqu;)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v2, Lash;

    new-instance v3, Lary;

    invoke-direct {v3}, Lary;-><init>()V

    invoke-direct {v2, v0, v3}, Lash;-><init>(Larn;Laru;)V

    invoke-virtual {v1, v2}, Lask;->a(Lasj;)V

    :cond_7
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lasl;

    iget-object v1, p0, Lars;->i:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-direct {v0, v1}, Lasl;-><init>(Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    iget-object v1, p0, Lars;->a:Lask;

    invoke-virtual {v1, v0}, Lask;->a(Lasj;)V

    .line 227
    :cond_8
    iget-boolean v0, p0, Lars;->k:Z

    if-nez v0, :cond_d

    .line 228
    iget-object v0, p0, Lars;->a:Lask;

    invoke-virtual {v0}, Lask;->a()V

    .line 229
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->a()V

    goto/16 :goto_0

    .line 219
    :cond_9
    invoke-static {}, Lbgp;->a()V

    invoke-static {}, Lwy;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laro;

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->INSTASNAP:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-direct {v0, v1}, Laro;-><init>(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    new-instance v0, Laro;

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->MISS_ETIKATE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-direct {v0, v1}, Laro;-><init>(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    new-instance v0, Laro;

    sget-object v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->GREYSCALE:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-direct {v0, v1}, Laro;-><init>(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    iget-object v1, p0, Lars;->a:Lask;

    new-instance v3, Lash;

    invoke-direct {v3, v0}, Lash;-><init>(Larn;)V

    invoke-virtual {v1, v3}, Lask;->a(Lasj;)V

    goto/16 :goto_1

    .line 224
    :cond_a
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, v7, :cond_b

    const v1, 0x7f0200dc

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_b
    const v1, 0x7f0200da

    goto :goto_5

    :cond_c
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, v5, Laqv$a;->a:I

    invoke-static {v1, v8}, Laqv;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR: battery filter should not be created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const v1, 0x7f02008d

    goto/16 :goto_4

    .line 231
    :cond_d
    iput-boolean v8, p0, Lars;->l:Z

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    iput-boolean v1, p0, Lars;->k:Z

    .line 286
    iget-object v0, p0, Lars;->a:Lask;

    invoke-virtual {v0}, Lask;->a()V

    .line 287
    iget-boolean v0, p0, Lars;->l:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->a()V

    .line 289
    iput-boolean v1, p0, Lars;->l:Z

    .line 291
    :cond_0
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 292
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lars;->a:Lask;

    iget-object v0, v0, Lask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasj;

    invoke-virtual {v0}, Lasj;->a()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/SwipeImageView;->f:Z

    invoke-static {}, Lcom/snapchat/android/util/PhotoEffectTask;->a()V

    .line 271
    return-void
.end method

.method public final onGeofilterLoadedEvent(Lbbq;)V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lbgp;->a()V

    .line 174
    iget-object v0, p0, Lars;->a:Lask;

    new-instance v1, Lasl;

    iget-object v2, p0, Lars;->i:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-direct {v1, v2}, Lasl;-><init>(Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    invoke-virtual {v0, v1}, Lask;->a(Lasj;)V

    .line 175
    iget-boolean v0, p0, Lars;->k:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lars;->a:Lask;

    invoke-virtual {v0}, Lask;->a()V

    .line 177
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 179
    :cond_0
    return-void
.end method

.method public final onWeatherUpdatedEvent(Lbev;)V
    .locals 4
    .annotation build Lavl;
    .end annotation

    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lbgp;->a()V

    .line 153
    iget-boolean v0, p0, Lars;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lars;->d:Laht;

    invoke-virtual {v0}, Laht;->b()Laka;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lars;->j:Z

    .line 156
    new-instance v0, Laqx;

    iget-object v1, p0, Lars;->b:Landroid/content/Context;

    iget-object v2, p0, Lars;->g:Lapd;

    invoke-direct {v0, v1, v2}, Laqx;-><init>(Landroid/content/Context;Lapd;)V

    .line 157
    invoke-virtual {v0}, Laqx;->a()V

    .line 158
    new-instance v1, Lasg;

    invoke-direct {v1, v0}, Lasg;-><init>(Laqx;)V

    .line 159
    iget-object v0, p0, Lars;->a:Lask;

    new-instance v2, Lash;

    new-instance v3, Lary;

    invoke-direct {v3}, Lary;-><init>()V

    invoke-direct {v2, v1, v3}, Lash;-><init>(Larn;Laru;)V

    invoke-virtual {v0, v2}, Lask;->a(Lasj;)V

    .line 162
    iget-object v0, p0, Lars;->a:Lask;

    new-instance v1, Lasl;

    iget-object v2, p0, Lars;->i:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-direct {v1, v2}, Lasl;-><init>(Lcom/snapchat/android/model/Mediabryo$SnapType;)V

    invoke-virtual {v0, v1}, Lask;->a(Lasj;)V

    .line 163
    iget-boolean v0, p0, Lars;->k:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lars;->a:Lask;

    invoke-virtual {v0}, Lask;->a()V

    .line 165
    iget-object v0, p0, Lars;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 168
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lars;->k:Z

    .line 280
    return-void
.end method
