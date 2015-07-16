.class public final Lwn;
.super Lwj;
.source "SourceFile"


# instance fields
.field private final n:Lbdz;

.field private final o:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbdz;)V
    .locals 6

    .prologue
    .line 28
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lwn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbdz;Lcom/squareup/otto/Bus;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbdz;Lcom/squareup/otto/Bus;)V
    .locals 4

    .prologue
    const v3, 0x7f020017

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lwj;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 35
    iput-object p4, p0, Lwn;->n:Lbdz;

    .line 36
    iput-object p5, p0, Lwn;->o:Lcom/squareup/otto/Bus;

    .line 38
    iget-object v0, p0, Lwn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lwn;->n:Lbdz;

    iget v0, v0, Lbdz;->mOriginatingFragment:I

    sparse-switch v0, :sswitch_data_0

    .line 79
    :goto_0
    invoke-virtual {p0}, Lwn;->a()V

    .line 80
    return-void

    .line 43
    :sswitch_0
    iget-object v0, p0, Lwn;->f:Landroid/widget/TextView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 44
    iget-object v0, p0, Lwn;->f:Landroid/widget/TextView;

    new-instance v1, Lwn$1;

    invoke-direct {v1, p0}, Lwn$1;-><init>(Lwn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lwn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    new-instance v1, Lwn$2;

    invoke-direct {v1, p0}, Lwn$2;-><init>(Lwn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :sswitch_2
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 68
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    new-instance v1, Lwn$3;

    invoke-direct {v1, p0}, Lwn$3;-><init>(Lwn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lwn;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lwn;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "selected_friend_username"

    iget-object v3, p0, Lwn;->n:Lbdz;

    iget-object v3, v3, Lbdz;->mRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    iget-object v1, p0, Lwn;->o:Lcom/squareup/otto/Bus;

    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lwn;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbu;

    invoke-direct {v1}, Lbbu;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lwn;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdr;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdr;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected final c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 94
    invoke-super {p0, p1}, Lwj;->c(Z)V

    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lwn;->n:Lbdz;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lwn;->n:Lbdz;

    iget v0, v0, Lbdz;->mOriginatingFragment:I

    sparse-switch v0, :sswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v0, p0, Lwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 104
    :sswitch_1
    iget-object v0, p0, Lwn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lwn;->n:Lbdz;

    iget v0, v0, Lbdz;->mOriginatingFragment:I

    .line 120
    packed-switch v0, :pswitch_data_0

    .line 127
    iget-object v1, p0, Lwn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v1, v0, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 132
    :goto_0
    iget-object v0, p0, Lwn;->n:Lbdz;

    iget-boolean v0, v0, Lbdz;->mIsDoubleTap:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Z)V

    .line 135
    :cond_0
    return v2

    .line 122
    :pswitch_0
    invoke-direct {p0}, Lwn;->i()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method
