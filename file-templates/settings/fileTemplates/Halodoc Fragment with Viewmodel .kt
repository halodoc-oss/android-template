#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProviders


class ${FRAGMENT_NAME}Fragment : Fragment() {

	private lateinit var viewModel: ${VIEW_MODEL_NAME}


	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                                  savedInstanceState: Bundle?): View? {

        return LayoutInflater.from(context)
                .inflate(R.layout.${LAYOUT_RES_ID}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initView()
        setUpViewModel()
        observeViewModel()
    }

    private fun initView() {

    }

    private fun setUpViewModel() {
        viewModel = ViewModelProviders
        .of(this, ${VIEW_MODEL_NAME}Factory())[${VIEW_MODEL_NAME}::class.java]
    }

    private fun observeViewModel() {

    }

}
