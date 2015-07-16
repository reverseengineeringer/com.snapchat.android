.class public final Lbwp;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbwu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/util/Date;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lnet/hockeyapp/android/views/AttachmentListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lbwu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Lbwp;->b:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lbwp;->a:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwp;->c:Ljava/text/SimpleDateFormat;

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwp;->d:Ljava/text/SimpleDateFormat;

    .line 65
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbwp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lbwp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 119
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lbwp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwu;

    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance p2, Lnet/hockeyapp/android/views/FeedbackMessageView;

    iget-object v1, p0, Lbwp;->b:Landroid/content/Context;

    invoke-direct {p2, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;)V

    .line 83
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    const/16 v1, 0x3001

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbwp;->f:Landroid/widget/TextView;

    .line 85
    const/16 v1, 0x3002

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbwp;->g:Landroid/widget/TextView;

    .line 86
    const/16 v1, 0x3003

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbwp;->h:Landroid/widget/TextView;

    .line 87
    const/16 v1, 0x3004

    invoke-virtual {p2, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/hockeyapp/android/views/AttachmentListView;

    iput-object v1, p0, Lbwp;->i:Lnet/hockeyapp/android/views/AttachmentListView;

    .line 90
    :try_start_0
    iget-object v1, p0, Lbwp;->c:Ljava/text/SimpleDateFormat;

    iget-object v3, v0, Lbwu;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lbwp;->e:Ljava/util/Date;

    .line 91
    iget-object v1, p0, Lbwp;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lbwp;->d:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lbwp;->e:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    iget-object v1, p0, Lbwp;->f:Landroid/widget/TextView;

    iget-object v3, v0, Lbwu;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lbwp;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lbwu;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lbwp;->i:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v1}, Lnet/hockeyapp/android/views/AttachmentListView;->removeAllViews()V

    .line 100
    iget-object v0, v0, Lbwu;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwt;

    .line 101
    new-instance v3, Lnet/hockeyapp/android/views/AttachmentView;

    iget-object v4, p0, Lbwp;->b:Landroid/content/Context;

    iget-object v5, p0, Lbwp;->i:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-direct {v3, v4, v5, v0}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lbwt;)V

    .line 102
    sget-object v4, Lbww$a;->a:Lbww;

    iget-object v5, v4, Lbww;->a:Ljava/util/Queue;

    new-instance v6, Lbww$b;

    invoke-direct {v6, v0, v3, v2}, Lbww$b;-><init>(Lbwt;Lnet/hockeyapp/android/views/AttachmentView;B)V

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lbww;->a()V

    .line 103
    iget-object v0, p0, Lbwp;->i:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/views/AttachmentListView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 80
    :cond_0
    check-cast p2, Lnet/hockeyapp/android/views/FeedbackMessageView;

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 107
    :cond_1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    move v0, v2

    :goto_3
    invoke-virtual {p2, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setFeedbackMessageViewBgAndTextColor(I)V

    .line 109
    return-object p2

    .line 107
    :cond_2
    const/4 v0, 0x1

    goto :goto_3
.end method
